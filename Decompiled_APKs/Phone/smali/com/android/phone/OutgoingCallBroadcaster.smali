.class public Lcom/android/phone/OutgoingCallBroadcaster;
.super Landroid/app/Activity;
.source "OutgoingCallBroadcaster.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_SIP_SELECT_PHONE:Ljava/lang/String; = "com.android.phone.SIP_SELECT_PHONE"

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final DIALOG_NOT_VOICE_CAPABLE:I = 0x1

.field public static final EXTRA_ACTUAL_NUMBER_TO_DIAL:Ljava/lang/String; = "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

.field public static final EXTRA_ALREADY_CALLED:Ljava/lang/String; = "android.phone.extra.ALREADY_CALLED"

.field public static final EXTRA_NEW_CALL_INTENT:Ljava/lang/String; = "android.phone.extra.NEW_CALL_INTENT"

.field public static final EXTRA_ORIGINAL_URI:Ljava/lang/String; = "android.phone.extra.ORIGINAL_URI"

.field public static final EXTRA_SEND_EMPTY_FLASH:Ljava/lang/String; = "com.android.phone.extra.SEND_EMPTY_FLASH"

.field public static final EXTRA_SIP_PHONE_URI:Ljava/lang/String; = "android.phone.extra.SIP_PHONE_URI"

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.PROCESS_OUTGOING_CALLS"

.field private static final TAG:Ljava/lang/String; = "OutgoingCallBroadcaster"

.field private static final VDBG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 100
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/phone/OutgoingCallBroadcaster;->startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method private handleNonVoiceCapable(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 659
    sget-boolean v4, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "OutgoingCallBroadcaster"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleNonVoiceCapable: handling "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " on non-voice-capable device..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 662
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 663
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 678
    .local v2, scheme:Ljava/lang/String;
    const-string v4, "android.intent.action.CALL"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "tel"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 679
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 680
    .local v1, newIntent:Landroid/content/Intent;
    sget-boolean v4, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "OutgoingCallBroadcaster"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- relaunching as a DIAL intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/phone/OutgoingCallBroadcaster;->startActivity(Landroid/content/Intent;)V

    .line 682
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    .line 691
    .end local v1           #newIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 688
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/phone/OutgoingCallBroadcaster;->showDialog(I)V

    goto :goto_0
.end method

.method private startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 14
    .parameter "context"
    .parameter "intent"
    .parameter "uri"
    .parameter "number"

    .prologue
    .line 264
    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 265
    .local v9, scheme:Ljava/lang/String;
    const-string v11, "sip"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 266
    .local v3, isSIP:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 267
    .local v1, app:Lcom/android/phone/PhoneApp;
    if-eqz v1, :cond_0

    if-nez v3, :cond_0

    .line 269
    iget-object v8, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v8, Lcom/android/internal/telephony/PhoneProxy;

    .line 271
    .local v8, phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneProxy;->getPhoneName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "GSM"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 273
    invoke-static/range {p4 .. p4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 276
    .local v6, newDialString:Ljava/lang/String;
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 278
    .local v5, networkPortion:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v2, v11

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 280
    .local v2, gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v5, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v4

    .line 282
    .local v4, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    if-nez v4, :cond_2

    .line 306
    .end local v2           #gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v4           #mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .end local v5           #networkPortion:Ljava/lang/String;
    .end local v6           #newDialString:Ljava/lang/String;
    .end local v8           #phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    :cond_0
    :goto_0
    new-instance v7, Landroid/content/Intent;

    const-class v11, Lcom/android/phone/InCallScreen;

    invoke-direct {v7, p1, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    .local v7, newIntent:Landroid/content/Intent;
    const-string v11, "android.intent.action.CALL"

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 309
    const-string v11, "android.intent.extra.PHONE_NUMBER"

    move-object/from16 v0, p4

    invoke-virtual {v7, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string v11, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    move-object/from16 v0, p4

    invoke-virtual {v7, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/android/phone/PhoneUtils;->checkAndCopyPhoneProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 313
    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/android/phone/PhoneUtils;->copyDialExtra(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 318
    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.android.phone.SIP_SELECT_PHONE"

    move-object/from16 v0, p3

    invoke-direct {v10, v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 319
    .local v10, selectPhoneIntent:Landroid/content/Intent;
    const-class v11, Lcom/android/phone/SipCallOptionHandler;

    invoke-virtual {v10, p1, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 320
    const-string v11, "android.phone.extra.NEW_CALL_INTENT"

    invoke-virtual {v10, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 321
    const/high16 v11, 0x1000

    invoke-virtual {v10, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 322
    sget-boolean v11, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v11, :cond_1

    const-string v11, "OutgoingCallBroadcaster"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "startSipCallOptionsHandler(): calling startActivity: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_1
    invoke-virtual {p1, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 326
    .end local v7           #newIntent:Landroid/content/Intent;
    .end local v10           #selectPhoneIntent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 284
    .restart local v2       #gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .restart local v4       #mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .restart local v5       #networkPortion:Ljava/lang/String;
    .restart local v6       #newDialString:Ljava/lang/String;
    .restart local v8       #phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    :cond_2
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTemporaryModeCLIR()Z

    move-result v11

    if-nez v11, :cond_0

    .line 288
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isModeCLIRForLexikon()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 291
    const-string v11, "OutgoingCallBroadcaster"

    const-string v12, "isModeCLIRForLexikon"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 295
    :cond_3
    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-static {v2, v0, v11}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    goto :goto_1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 724
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    .line 725
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    .line 718
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 732
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 733
    sget-boolean v0, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OutgoingCallBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: newConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 21
    .parameter "icicle"

    .prologue
    .line 330
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getIntent()Landroid/content/Intent;

    move-result-object v15

    .line 365
    .local v15, intent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    .line 367
    .local v13, configuration:Landroid/content/res/Configuration;
    sget-boolean v3, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "OutgoingCallBroadcaster"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate: this = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", icicle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    sget-boolean v3, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "OutgoingCallBroadcaster"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - getIntent() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_1
    sget-boolean v3, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "OutgoingCallBroadcaster"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - configuration = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_2
    if-eqz p1, :cond_3

    .line 384
    const-string v3, "OutgoingCallBroadcaster"

    const-string v5, "onCreate: non-null icicle!  Bailing out, not sending NEW_OUTGOING_CALL broadcast..."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :goto_0
    return-void

    .line 398
    :cond_3
    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 399
    .local v11, action:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v15, v0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 403
    .local v9, number:Ljava/lang/String;
    sget-boolean v3, Lcom/android/phone/HtcFeatureList;->FEATURE_DISABLE_3_WAY_CALL:Z

    if-eqz v3, :cond_5

    .line 405
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v18

    .line 406
    .local v18, state:Lcom/android/internal/telephony/Phone$State;
    sget-boolean v3, Lcom/android/phone/HtcCdmaPhoneApp;->mEnterEmergencyMode:Z

    if-nez v3, :cond_5

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_4

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v18

    if-ne v0, v3, :cond_5

    .line 412
    :cond_4
    new-instance v19, Lcom/android/phone/OutgoingCallBroadcaster$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/OutgoingCallBroadcaster$1;-><init>(Lcom/android/phone/OutgoingCallBroadcaster;)V

    .line 422
    .local v19, thread:Ljava/lang/Thread;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 431
    .end local v18           #state:Lcom/android/internal/telephony/Phone$State;
    .end local v19           #thread:Ljava/lang/Thread;
    :cond_5
    if-eqz v9, :cond_6

    .line 432
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 436
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 440
    :cond_6
    move-object/from16 v0, p0

    invoke-static {v0, v15, v9}, Lcom/android/phone/util/HomeDialing;->isAvailable(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 441
    invoke-static/range {p0 .. p0}, Lcom/android/phone/util/HomeDialing;->havePreference(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 442
    move-object/from16 v0, p0

    invoke-static {v0, v9, v15}, Lcom/android/phone/util/HomeDialing;->appendPreferredCountryCode(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v9

    .line 451
    :cond_7
    if-eqz v9, :cond_c

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v14, 0x1

    .line 456
    .local v14, emergencyNumber:Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 460
    const-string v3, "android.intent.action.CALL"

    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 461
    const-string v3, "OutgoingCallBroadcaster"

    const-string v5, "Attempt to deliver non-CALL action; forcing to CALL"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string v3, "android.intent.action.CALL"

    invoke-virtual {v15, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    :cond_8
    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 469
    if-eqz v14, :cond_d

    const-string v11, "android.intent.action.CALL_EMERGENCY"

    .line 472
    :goto_2
    sget-boolean v3, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v3, :cond_9

    const-string v3, "OutgoingCallBroadcaster"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- updating action from CALL_PRIVILEGED to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_9
    invoke-virtual {v15, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    :cond_a
    const-string v3, "android.intent.action.CALL"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 477
    if-eqz v14, :cond_10

    .line 484
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isPhoneFeatureEnabled()Z

    move-result v3

    if-nez v3, :cond_e

    .line 485
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_0

    .line 444
    .end local v14           #emergencyNumber:Z
    :cond_b
    move-object/from16 v0, p0

    invoke-static {v0, v15, v9}, Lcom/android/phone/util/HomeDialing;->startHomeDialingActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_0

    .line 451
    :cond_c
    const/4 v14, 0x0

    goto :goto_1

    .line 469
    .restart local v14       #emergencyNumber:Z
    :cond_d
    const-string v11, "android.intent.action.CALL"

    goto :goto_2

    .line 490
    :cond_e
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 503
    .local v16, invokeFrameworkDialer:Landroid/content/Intent;
    const-string v3, "com.android.htccontacts"

    const-string v5, "com.android.htccontacts.DialerTabActivity"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    const-string v3, "android.intent.action.DIAL"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 510
    sget-boolean v3, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v3, :cond_f

    const-string v3, "OutgoingCallBroadcaster"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate(): calling startActivity for Dialer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/OutgoingCallBroadcaster;->startActivity(Landroid/content/Intent;)V

    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_0

    .line 516
    .end local v16           #invokeFrameworkDialer:Landroid/content/Intent;
    :cond_10
    const/4 v12, 0x0

    .line 547
    .local v12, callNow:Z
    :goto_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 552
    if-eqz v9, :cond_11

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 553
    :cond_11
    const-string v3, "com.android.phone.extra.SEND_EMPTY_FLASH"

    const/4 v5, 0x0

    invoke-virtual {v15, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 554
    const-string v3, "OutgoingCallBroadcaster"

    const-string v5, "onCreate: SEND_EMPTY_FLASH..."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->sendEmptyFlash(Lcom/android/internal/telephony/Phone;)V

    .line 556
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_0

    .line 517
    .end local v12           #callNow:Z
    :cond_12
    const-string v3, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 523
    if-nez v14, :cond_13

    .line 528
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_0

    .line 531
    :cond_13
    const/4 v12, 0x1

    .restart local v12       #callNow:Z
    goto :goto_3

    .line 533
    .end local v12           #callNow:Z
    :cond_14
    const-string v3, "OutgoingCallBroadcaster"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled Intent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_0

    .line 559
    .restart local v12       #callNow:Z
    :cond_15
    const-string v3, "OutgoingCallBroadcaster"

    const-string v5, "onCreate: null or empty number, setting callNow=true..."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const/4 v12, 0x1

    .line 564
    :cond_16
    if-eqz v12, :cond_18

    .line 568
    const-class v3, Lcom/android/phone/InCallScreen;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 569
    sget-boolean v3, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v3, :cond_17

    const-string v3, "OutgoingCallBroadcaster"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate(): callNow case, calling startActivity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/phone/OutgoingCallBroadcaster;->startActivity(Landroid/content/Intent;)V

    .line 590
    :cond_18
    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v20

    .line 591
    .local v20, uri:Landroid/net/Uri;
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v17

    .line 592
    .local v17, scheme:Ljava/lang/String;
    const-string v3, "sip"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 594
    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v15, v2, v9}, Lcom/android/phone/OutgoingCallBroadcaster;->startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    .line 595
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_0

    .line 616
    :cond_1a
    new-instance v4, Landroid/content/Intent;

    const-string v3, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 617
    .local v4, broadcastIntent:Landroid/content/Intent;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 618
    const-string v3, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v4, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    :cond_1b
    invoke-static {v15, v4}, Lcom/android/phone/PhoneUtils;->checkAndCopyPhoneProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 621
    invoke-static {v15, v4}, Lcom/android/phone/PhoneUtils;->copyDialExtra(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 623
    const-string v3, "android.phone.extra.ALREADY_CALLED"

    invoke-virtual {v4, v3, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 624
    const-string v3, "android.phone.extra.ORIGINAL_URI"

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    sget-boolean v3, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v3, :cond_1c

    const-string v3, "OutgoingCallBroadcaster"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Broadcasting intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_1c
    const-string v5, "android.permission.PROCESS_OUTGOING_CALLS"

    new-instance v6, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;-><init>(Lcom/android/phone/OutgoingCallBroadcaster;)V

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/phone/OutgoingCallBroadcaster;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 696
    packed-switch p1, :pswitch_data_0

    .line 706
    const-string v1, "OutgoingCallBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateDialog: unexpected ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const/4 v0, 0x0

    .line 710
    .local v0, dialog:Landroid/app/Dialog;
    :goto_0
    return-object v0

    .line 698
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 704
    .restart local v0       #dialog:Landroid/app/Dialog;
    goto :goto_0

    .line 696
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 645
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/OutgoingCallBroadcaster;->removeDialog(I)V

    .line 647
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 648
    return-void
.end method
