.class Lcom/android/phone/InCallMenu;
.super Ljava/lang/Object;
.source "InCallMenu.java"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE/InCallMenu"

.field private static final RD_DEBUG:Z

.field private static final SUPPORT_ADD_CALL:Z

.field private static final SUPPORT_JOIN:Z


# instance fields
.field mAddCall:Lcom/android/phone/InCallMenuItemView;

.field mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

.field mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

.field mBluetooth:Lcom/android/phone/InCallMenuItemView;

.field mDecline:Lcom/android/phone/InCallMenuItemView;

.field mHTCAudioSrc:Lcom/android/phone/InCallMenuItemView;

.field mHTCDefer:Lcom/android/phone/InCallMenuItemView;

.field mHTCEndAllCalls:Lcom/android/phone/InCallMenuItemView;

.field mHTCEndHeldCall:Lcom/android/phone/InCallMenuItemView;

.field mHTCLaunchDialer:Lcom/android/phone/InCallMenuItemView;

.field mHTCMuteRinging:Lcom/android/phone/InCallMenuItemView;

.field mHTCRecorder:Lcom/android/phone/InCallMenuItemView;

.field mHTCSendMessage:Lcom/android/phone/InCallMenuItemView;

.field mHTCViewContacts:Lcom/android/phone/InCallMenuItemView;

.field mHold:Lcom/android/phone/InCallMenuItemView;

.field private mInCallMenuView:Lcom/android/phone/InCallMenuView;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field mMergeCalls:Lcom/android/phone/InCallMenuItemView;

.field mMute:Lcom/android/phone/InCallMenuItemView;

.field mSpeaker:Lcom/android/phone/InCallMenuItemView;

.field mSwapCalls:Lcom/android/phone/InCallMenuItemView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd2

    if-eq v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/InCallMenu;->SUPPORT_JOIN:Z

    .line 62
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xaf

    if-eq v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lcom/android/phone/InCallMenu;->SUPPORT_ADD_CALL:Z

    return-void

    :cond_0
    move v0, v2

    .line 60
    goto :goto_0

    :cond_1
    move v1, v2

    .line 62
    goto :goto_1
.end method

.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 112
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 115
    return-void
.end method

.method private addHtcMenus()V
    .locals 3

    .prologue
    .line 1032
    sget-boolean v0, Lcom/android/phone/util/VoiceRecorderHelper;->IS_INCALL_RECORDING_ENABLE:Z

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mHTCRecorder:Lcom/android/phone/InCallMenuItemView;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 1035
    :cond_0
    return-void
.end method

.method private createHTCMenus(Landroid/content/Context;)V
    .locals 2
    .parameter "wrappedContext"

    .prologue
    .line 946
    new-instance v0, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v0, p1}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCViewContacts:Lcom/android/phone/InCallMenuItemView;

    .line 947
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCViewContacts:Lcom/android/phone/InCallMenuItemView;

    const v1, 0x7f080010

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 948
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCViewContacts:Lcom/android/phone/InCallMenuItemView;

    const v1, 0x7f0e004b

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 949
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCViewContacts:Lcom/android/phone/InCallMenuItemView;

    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 950
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCViewContacts:Lcom/android/phone/InCallMenuItemView;

    const v1, 0x2080a40

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 952
    new-instance v0, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v0, p1}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCMuteRinging:Lcom/android/phone/InCallMenuItemView;

    .line 953
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCMuteRinging:Lcom/android/phone/InCallMenuItemView;

    const v1, 0x7f080011

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 954
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCMuteRinging:Lcom/android/phone/InCallMenuItemView;

    const v1, 0x7f0e004c

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 955
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCMuteRinging:Lcom/android/phone/InCallMenuItemView;

    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 956
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCMuteRinging:Lcom/android/phone/InCallMenuItemView;

    const v1, 0x2080a37

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 958
    new-instance v0, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v0, p1}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCSendMessage:Lcom/android/phone/InCallMenuItemView;

    .line 959
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCSendMessage:Lcom/android/phone/InCallMenuItemView;

    const v1, 0x7f080012

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 960
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCSendMessage:Lcom/android/phone/InCallMenuItemView;

    const v1, 0x7f0e004d

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 961
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCSendMessage:Lcom/android/phone/InCallMenuItemView;

    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 962
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCSendMessage:Lcom/android/phone/InCallMenuItemView;

    const v1, 0x2080a77

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 965
    new-instance v0, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v0, p1}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCEndHeldCall:Lcom/android/phone/InCallMenuItemView;

    .line 966
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCEndHeldCall:Lcom/android/phone/InCallMenuItemView;

    const v1, 0x7f080015

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 967
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCEndHeldCall:Lcom/android/phone/InCallMenuItemView;

    const v1, 0x7f0e0084

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 968
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCEndHeldCall:Lcom/android/phone/InCallMenuItemView;

    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 969
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCEndHeldCall:Lcom/android/phone/InCallMenuItemView;

    const v1, 0x2080a19

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 972
    new-instance v0, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v0, p1}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCEndAllCalls:Lcom/android/phone/InCallMenuItemView;

    .line 973
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCEndAllCalls:Lcom/android/phone/InCallMenuItemView;

    const v1, 0x7f080016

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 974
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCEndAllCalls:Lcom/android/phone/InCallMenuItemView;

    const v1, 0x7f0e0085

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 975
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCEndAllCalls:Lcom/android/phone/InCallMenuItemView;

    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 976
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCEndAllCalls:Lcom/android/phone/InCallMenuItemView;

    const v1, 0x2080a00

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 992
    sget-boolean v0, Lcom/android/phone/util/VoiceRecorderHelper;->IS_INCALL_RECORDING_ENABLE:Z

    if-eqz v0, :cond_0

    .line 993
    new-instance v0, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v0, p1}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCRecorder:Lcom/android/phone/InCallMenuItemView;

    .line 994
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCRecorder:Lcom/android/phone/InCallMenuItemView;

    const v1, 0x7f080025

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 995
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCRecorder:Lcom/android/phone/InCallMenuItemView;

    const v1, 0x7f0e00ac

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 996
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCRecorder:Lcom/android/phone/InCallMenuItemView;

    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 997
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCRecorder:Lcom/android/phone/InCallMenuItemView;

    const v1, 0x2080aa4

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 1000
    :cond_0
    sget-boolean v0, Lcom/android/phone/util/Constants;->SUPPORT_AUDIO_SRC_SELECTION:Z

    if-eqz v0, :cond_1

    .line 1001
    new-instance v0, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v0, p1}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCAudioSrc:Lcom/android/phone/InCallMenuItemView;

    .line 1002
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCAudioSrc:Lcom/android/phone/InCallMenuItemView;

    const v1, 0x7f080013

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 1003
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCAudioSrc:Lcom/android/phone/InCallMenuItemView;

    const v1, 0x7f0e00af

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 1004
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCAudioSrc:Lcom/android/phone/InCallMenuItemView;

    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1005
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCAudioSrc:Lcom/android/phone/InCallMenuItemView;

    const v1, 0x2080a46

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 1007
    :cond_1
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 937
    const-string v0, "PHONE/InCallMenu"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    return-void
.end method

.method private updateBluetoothButton()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 900
    sget-boolean v1, Lcom/android/phone/util/Constants;->SUPPORT_AUDIO_SRC_SELECTION:Z

    if-eqz v1, :cond_0

    .line 921
    :goto_0
    return-void

    .line 904
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 905
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 907
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 908
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v0

    .line 909
    .local v0, audioConnectedOrPending:Z
    if-eqz v0, :cond_1

    .line 910
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    const v2, 0x7f0e006d

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    goto :goto_0

    .line 912
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    const v2, 0x7f0e006c

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    goto :goto_0

    .line 916
    .end local v0           #audioConnectedOrPending:Z
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    goto :goto_0
.end method

.method private updateRecorderButton(Z)V
    .locals 3
    .parameter "isVT"

    .prologue
    .line 1010
    invoke-static {}, Lcom/android/phone/util/VoiceRecorderHelper;->getInstance()Lcom/android/phone/util/VoiceRecorderHelper;

    move-result-object v0

    .line 1011
    .local v0, helper:Lcom/android/phone/util/VoiceRecorderHelper;
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mHTCRecorder:Lcom/android/phone/InCallMenuItemView;

    if-eqz v1, :cond_0

    .line 1012
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/phone/util/VoiceRecorderHelper;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    .line 1013
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mHTCRecorder:Lcom/android/phone/InCallMenuItemView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 1014
    invoke-virtual {v0}, Lcom/android/phone/util/VoiceRecorderHelper;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1015
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mHTCRecorder:Lcom/android/phone/InCallMenuItemView;

    const v2, 0x7f0e00ad

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 1023
    :cond_0
    :goto_0
    return-void

    .line 1017
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mHTCRecorder:Lcom/android/phone/InCallMenuItemView;

    const v2, 0x7f0e00ac

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    goto :goto_0

    .line 1020
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mHTCRecorder:Lcom/android/phone/InCallMenuItemView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    goto :goto_0
.end method


# virtual methods
.method clearInCallScreenReference()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 123
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    invoke-virtual {v0}, Lcom/android/phone/InCallMenuView;->clearInCallScreenReference()V

    .line 124
    :cond_0
    return-void
.end method

.method getView()Lcom/android/phone/InCallMenuView;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    return-object v0
.end method

.method initMenu()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 146
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v3, 0x10302f4

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 150
    .local v1, wrappedContext:Landroid/content/Context;
    new-instance v2, Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v2, v1, v3}, Lcom/android/phone/InCallMenuView;-><init>(Landroid/content/Context;Lcom/android/phone/InCallScreen;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    .line 170
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isEspresso()Z

    move-result v0

    .line 171
    .local v0, isEspresso:Z
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v2, v1}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mDecline:Lcom/android/phone/InCallMenuItemView;

    .line 172
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mDecline:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f08002b

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 173
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mDecline:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mDecline:Lcom/android/phone/InCallMenuItemView;

    if-eqz v0, :cond_9

    const/high16 v2, 0x7f0e

    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 175
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mDecline:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x2080a1d

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 177
    sget-boolean v2, Lcom/android/phone/InCallMenu;->SUPPORT_ADD_CALL:Z

    if-eqz v2, :cond_0

    .line 178
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v2, v1}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    .line 179
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f08002c

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 180
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f0e025e

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 182
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x20809bd

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 185
    :cond_0
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v2, v1}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    .line 186
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f08002d

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 187
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f0e025c

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 189
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x2080a89

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 191
    sget-boolean v2, Lcom/android/phone/InCallMenu;->SUPPORT_JOIN:Z

    if-eqz v2, :cond_1

    .line 192
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v2, v1}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    .line 193
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f08002e

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 194
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f0e025d

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 196
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x2080a2d

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 202
    :cond_1
    sget-boolean v2, Lcom/android/phone/util/Constants;->SUPPORT_AUDIO_SRC_SELECTION:Z

    if-nez v2, :cond_2

    .line 203
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v2, v1}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    .line 204
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f08002f

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 205
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f0e006d

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 207
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x20809dd

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 211
    :cond_2
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v2, v1}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    .line 212
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f080030

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 213
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f0e006a

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 215
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x2080a83

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 218
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v2, v1}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    .line 219
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f080031

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 220
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f0e0259

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 223
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x2080a36

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 225
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v2, v1}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    .line 226
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f080032

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 227
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f0e025a

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 230
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x2080a18

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 232
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v2, v1}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    .line 233
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f080033

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 234
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f0e0262

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 237
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v2, v1}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    .line 238
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f080034

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 239
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f0e0263

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 241
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x20809cf

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 244
    sget-boolean v2, Lcom/android/phone/util/Constants;->SUPPORT_DEFER:Z

    if-eqz v2, :cond_3

    .line 245
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v2, v1}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mHTCDefer:Lcom/android/phone/InCallMenuItemView;

    .line 246
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mHTCDefer:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f080037

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 247
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mHTCDefer:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mHTCDefer:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f0e00b5

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 249
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mHTCDefer:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f020043

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 254
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/phone/InCallMenu;->createHTCMenus(Landroid/content/Context;)V

    .line 287
    sget-boolean v2, Lcom/android/phone/InCallMenu;->SUPPORT_ADD_CALL:Z

    if-eqz v2, :cond_4

    .line 288
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 290
    :cond_4
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 291
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mHTCViewContacts:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 292
    sget-boolean v2, Lcom/android/phone/InCallMenu;->SUPPORT_JOIN:Z

    if-eqz v2, :cond_5

    .line 293
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 295
    :cond_5
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 296
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mDecline:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 297
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 298
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 301
    sget-boolean v2, Lcom/android/phone/util/Constants;->SUPPORT_DEFER:Z

    if-eqz v2, :cond_6

    .line 302
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mHTCDefer:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 340
    :cond_6
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mHTCSendMessage:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 341
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mHTCMuteRinging:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 342
    sget-boolean v2, Lcom/android/phone/util/Constants;->SUPPORT_AUDIO_SRC_SELECTION:Z

    if-nez v2, :cond_7

    .line 343
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 345
    :cond_7
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 347
    sget-boolean v2, Lcom/android/phone/util/Constants;->SUPPORT_AUDIO_SRC_SELECTION:Z

    if-eqz v2, :cond_8

    .line 348
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mHTCAudioSrc:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 351
    :cond_8
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 356
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mHTCEndHeldCall:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 357
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mHTCEndAllCalls:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 359
    invoke-direct {p0}, Lcom/android/phone/InCallMenu;->addHtcMenus()V

    .line 361
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    invoke-virtual {v2}, Lcom/android/phone/InCallMenuView;->dumpState()V

    .line 362
    return-void

    .line 174
    :cond_9
    const v2, 0x7f0e002a

    goto/16 :goto_0
.end method

.method public setAudioSrcMenuItemIcon(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCAudioSrc:Lcom/android/phone/InCallMenuItemView;

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mHTCAudioSrc:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v0, p1}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 1050
    :cond_0
    return-void
.end method

.method updateItems(Lcom/android/internal/telephony/CallManager;)Z
    .locals 28
    .parameter "cm"

    .prologue
    .line 381
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v25

    sget-object v26, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 383
    const/16 v25, 0x0

    .line 895
    :goto_0
    return v25

    .line 387
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v19

    .line 388
    .local v19, phoneType:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    .line 389
    .local v10, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 390
    .local v3, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v25

    if-eqz v25, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v25

    if-nez v25, :cond_1

    .line 391
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v19

    .line 395
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v14

    .line 396
    .local v14, hasRingingCall:Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v12

    .line 397
    .local v12, hasActiveCall:Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    .line 398
    .local v11, fgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v13

    .line 401
    .local v13, hasHoldingCall:Z
    if-eqz v12, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v25

    if-eqz v25, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/phone/PhoneApp;->isOtaCallInActiveState()Z

    move-result v25

    if-eqz v25, :cond_4

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 409
    sget-boolean v25, Lcom/android/phone/InCallMenu;->SUPPORT_ADD_CALL:Z

    if-eqz v25, :cond_2

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 412
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 420
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v15

    .line 422
    .local v15, inConferenceCall:Z
    if-nez v15, :cond_3

    const/16 v22, 0x1

    .line 434
    .local v22, showShowDialpad:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v23

    .line 437
    .local v23, speakerOn:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setIndicatorState(Z)V

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/phone/InCallMenuView;->updateVisibility()V

    .line 440
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 422
    .end local v22           #showShowDialpad:Z
    .end local v23           #speakerOn:Z
    :cond_3
    const/16 v22, 0x0

    goto :goto_1

    .line 444
    .end local v15           #inConferenceCall:Z
    :cond_4
    if-eqz v14, :cond_17

    .line 446
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    .line 447
    .local v6, conn:Lcom/android/internal/telephony/Connection;
    const/16 v21, 0x1

    .line 448
    .local v21, sendMsg:Z
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 449
    const/16 v21, 0x0

    .line 466
    :goto_2
    if-eqz v12, :cond_e

    if-nez v13, :cond_e

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 476
    const/16 v25, 0x2

    move/from16 v0, v19

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 486
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mDecline:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 487
    sget-boolean v25, Lcom/android/phone/InCallMenu;->SUPPORT_ADD_CALL:Z

    if-eqz v25, :cond_5

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 490
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 491
    sget-boolean v25, Lcom/android/phone/InCallMenu;->SUPPORT_JOIN:Z

    if-eqz v25, :cond_6

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 495
    :cond_6
    sget-boolean v25, Lcom/android/phone/util/Constants;->SUPPORT_AUDIO_SRC_SELECTION:Z

    if-eqz v25, :cond_d

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHTCAudioSrc:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 501
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHTCMuteRinging:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHTCSendMessage:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 515
    sget-boolean v25, Lcom/android/phone/util/Constants;->SUPPORT_DEFER:Z

    if-eqz v25, :cond_7

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHTCDefer:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 606
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHTCViewContacts:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHTCEndHeldCall:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHTCEndAllCalls:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 614
    sget-boolean v25, Lcom/android/phone/util/VoiceRecorderHelper;->IS_INCALL_RECORDING_ENABLE:Z

    if-eqz v25, :cond_8

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHTCRecorder:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 621
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/phone/InCallMenuView;->updateVisibility()V

    .line 623
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 451
    :cond_9
    sget-boolean v25, Lcom/android/phone/util/Constants;->SUPPORT_DEFER:Z

    if-eqz v25, :cond_a

    .line 452
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 454
    :cond_a
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Lcom/htc/util/contacts/PhoneUtils;->getType(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 457
    .local v20, ringType:I
    invoke-static/range {v20 .. v20}, Lcom/htc/util/contacts/PhoneUtils;->isSpecialType(I)Z

    move-result v25

    if-nez v25, :cond_b

    const/16 v21, 0x1

    :goto_6
    goto/16 :goto_2

    :cond_b
    const/16 v21, 0x0

    goto :goto_6

    .line 480
    .end local v20           #ringType:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    goto/16 :goto_3

    .line 499
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    goto/16 :goto_4

    .line 519
    :cond_e
    if-eqz v12, :cond_12

    if-eqz v13, :cond_12

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mDecline:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 528
    sget-boolean v25, Lcom/android/phone/InCallMenu;->SUPPORT_ADD_CALL:Z

    if-eqz v25, :cond_f

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 531
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 532
    sget-boolean v25, Lcom/android/phone/InCallMenu;->SUPPORT_JOIN:Z

    if-eqz v25, :cond_10

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 536
    :cond_10
    sget-boolean v25, Lcom/android/phone/util/Constants;->SUPPORT_AUDIO_SRC_SELECTION:Z

    if-eqz v25, :cond_11

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHTCAudioSrc:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 542
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHTCMuteRinging:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHTCSendMessage:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 553
    sget-boolean v25, Lcom/android/phone/util/Constants;->SUPPORT_DEFER:Z

    if-eqz v25, :cond_7

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHTCDefer:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    goto/16 :goto_5

    .line 540
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    goto :goto_7

    .line 560
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 568
    sget-boolean v25, Lcom/android/phone/InCallMenu;->SUPPORT_ADD_CALL:Z

    if-eqz v25, :cond_13

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 571
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 572
    sget-boolean v25, Lcom/android/phone/InCallMenu;->SUPPORT_JOIN:Z

    if-eqz v25, :cond_14

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 576
    :cond_14
    sget-boolean v25, Lcom/android/phone/util/Constants;->SUPPORT_AUDIO_SRC_SELECTION:Z

    if-eqz v25, :cond_16

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHTCAudioSrc:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 582
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHTCMuteRinging:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHTCSendMessage:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 593
    const/16 v24, 0x0

    .line 594
    .local v24, visible:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/phone/CallNotifier;->isNewRingingConnectionInKeyguardRestrictedInputMode()Z

    move-result v25

    if-eqz v25, :cond_15

    .line 595
    const/16 v24, 0x1

    .line 598
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mDecline:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 600
    sget-boolean v25, Lcom/android/phone/util/Constants;->SUPPORT_DEFER:Z

    if-eqz v25, :cond_7

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHTCDefer:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    goto/16 :goto_5

    .line 580
    .end local v24           #visible:Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    goto/16 :goto_8

    .line 630
    .end local v6           #conn:Lcom/android/internal/telephony/Connection;
    .end local v21           #sendMsg:Z
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mDecline:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/phone/InCallScreen;->getMode()Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-result-object v16

    .line 671
    .local v16, mode:Lcom/android/phone/InCallScreen$InCallScreenMode;
    sget-boolean v25, Lcom/android/phone/InCallMenu;->SUPPORT_ADD_CALL:Z

    if-eqz v25, :cond_19

    .line 672
    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isSingleAlive()Z

    move-result v25

    if-nez v25, :cond_18

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isConference()Z

    move-result v25

    if-eqz v25, :cond_23

    .line 673
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 685
    :cond_19
    :goto_9
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isCdmaCallsOnly()Z

    move-result v25

    if-eqz v25, :cond_26

    .line 686
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 687
    .local v2, app:Lcom/android/phone/PhoneApp;
    iget-object v0, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v7

    .line 689
    .local v7, currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v25, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SWITCH_PARTIES_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v25

    if-eq v7, v0, :cond_1a

    sget-object v25, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v25

    if-ne v7, v0, :cond_1b

    .line 692
    :cond_1a
    sget-boolean v25, Lcom/android/phone/InCallMenu;->SUPPORT_ADD_CALL:Z

    if-eqz v25, :cond_1b

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 696
    :cond_1b
    sget-object v25, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v25

    if-ne v7, v0, :cond_24

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 705
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHTCEndHeldCall:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 706
    sget-object v25, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v25

    if-eq v7, v0, :cond_1c

    sget-object v25, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SWITCH_PARTIES_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v25

    if-ne v7, v0, :cond_25

    .line 708
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHTCEndAllCalls:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 738
    .end local v2           #app:Lcom/android/phone/PhoneApp;
    .end local v7           #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallMenu;->updateBluetoothButton()V

    .line 744
    sget-boolean v25, Lcom/android/phone/util/Constants;->SUPPORT_AUDIO_SRC_SELECTION:Z

    if-eqz v25, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v25

    if-eqz v25, :cond_2b

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHTCAudioSrc:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 787
    :goto_c
    const-string v25, "ril.cdma.inecmmode"

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    if-nez v25, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/phone/InCallScreen;->isEmergency()Z

    move-result v25

    if-eqz v25, :cond_2f

    :cond_1d
    const/4 v9, 0x1

    .line 789
    .local v9, emergencyMode:Z
    :goto_d
    sget-object v25, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v25

    if-ne v11, v0, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/phone/InCallScreen;->isEmergency()Z

    move-result v25

    if-nez v25, :cond_30

    const/4 v5, 0x1

    .line 791
    .local v5, canMute:Z
    :goto_e
    if-eqz v5, :cond_1e

    if-eqz v9, :cond_31

    .line 792
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 807
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHTCMuteRinging:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 809
    if-eqz v9, :cond_1f

    sget-short v25, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v26, 0x94

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1f

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 814
    :cond_1f
    const/16 v25, 0x2

    move/from16 v0, v19

    move/from16 v1, v25

    if-ne v0, v1, :cond_33

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 843
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHTCSendMessage:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 854
    if-eqz v9, :cond_39

    sget-short v25, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v26, 0x94

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_39

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHTCViewContacts:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 865
    :goto_11
    sget-boolean v25, Lcom/android/phone/util/Constants;->SUPPORT_DEFER:Z

    if-eqz v25, :cond_20

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHTCDefer:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 870
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHTCViewContacts:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    if-eqz v25, :cond_21

    .line 872
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/htc/cscore/util/CSUtil;->getLockScreenStatus(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    if-eqz v25, :cond_3a

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHTCViewContacts:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    :cond_21
    :goto_12
    sget-boolean v25, Lcom/android/phone/util/VoiceRecorderHelper;->IS_INCALL_RECORDING_ENABLE:Z

    if-eqz v25, :cond_22

    if-eqz p1, :cond_22

    .line 886
    invoke-static/range {p1 .. p1}, Lcom/android/phone/util/VTHelper;->hasVTCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/phone/InCallMenu;->updateRecorderButton(Z)V

    .line 893
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/phone/InCallMenuView;->updateVisibility()V

    .line 895
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 676
    .end local v5           #canMute:Z
    .end local v9           #emergencyMode:Z
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    goto/16 :goto_9

    .line 701
    .restart local v2       #app:Lcom/android/phone/PhoneApp;
    .restart local v7       #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const v26, 0x7f0e0142

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    goto/16 :goto_a

    .line 711
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHTCEndAllCalls:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    goto/16 :goto_b

    .line 715
    .end local v2           #app:Lcom/android/phone/PhoneApp;
    .end local v7           #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_26
    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isMultiple()Z

    move-result v25

    if-eqz v25, :cond_29

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 720
    sget-boolean v25, Lcom/android/phone/InCallMenu;->SUPPORT_JOIN:Z

    if-eqz v25, :cond_27

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v26, v0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->canMergeCalls()I

    move-result v25

    if-nez v25, :cond_28

    const/16 v25, 0x1

    :goto_13
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 726
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHTCEndHeldCall:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHTCEndAllCalls:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    goto/16 :goto_b

    .line 722
    :cond_28
    const/16 v25, 0x0

    goto :goto_13

    .line 729
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 730
    sget-boolean v25, Lcom/android/phone/InCallMenu;->SUPPORT_JOIN:Z

    if-eqz v25, :cond_2a

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 733
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHTCEndHeldCall:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHTCEndAllCalls:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    goto/16 :goto_b

    .line 749
    :cond_2b
    sget-boolean v25, Lcom/android/phone/util/Constants;->SUPPORT_AUDIO_SRC_SELECTION:Z

    if-eqz v25, :cond_2c

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHTCAudioSrc:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 753
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/phone/InCallMenuItemView;->isVisible()Z

    move-result v25

    if-nez v25, :cond_2d

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 773
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v23

    .line 774
    .restart local v23       #speakerOn:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setIndicatorState(Z)V

    .line 775
    if-eqz v23, :cond_2e

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const v26, 0x2080a82

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const v26, 0x7f0e006b

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    goto/16 :goto_c

    .line 779
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const v26, 0x2080a83

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const v26, 0x7f0e006a

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    goto/16 :goto_c

    .line 787
    .end local v23           #speakerOn:Z
    :cond_2f
    const/4 v9, 0x0

    goto/16 :goto_d

    .line 789
    .restart local v9       #emergencyMode:Z
    :cond_30
    const/4 v5, 0x0

    goto/16 :goto_e

    .line 794
    .restart local v5       #canMute:Z
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 795
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v17

    .line 797
    .local v17, muteOn:Z
    if-eqz v17, :cond_32

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const v26, 0x7f0e006e

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const v26, 0x2080a36

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    goto/16 :goto_f

    .line 801
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const v26, 0x7f0e0259

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const v26, 0x2080a36

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    goto/16 :goto_f

    .line 825
    .end local v17           #muteOn:Z
    :cond_33
    if-eqz v13, :cond_36

    if-nez v12, :cond_36

    const/16 v18, 0x1

    .line 826
    .local v18, onHold:Z
    :goto_14
    if-eqz v12, :cond_34

    if-nez v13, :cond_37

    :cond_34
    if-eqz v12, :cond_35

    sget-object v25, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v25

    if-ne v11, v0, :cond_37

    :cond_35
    const/4 v4, 0x1

    .line 829
    .local v4, canHold:Z
    :goto_15
    if-eqz v18, :cond_38

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const v26, 0x7f0e006f

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const v26, 0x2080a19

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 836
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    goto/16 :goto_10

    .line 825
    .end local v4           #canHold:Z
    .end local v18           #onHold:Z
    :cond_36
    const/16 v18, 0x0

    goto :goto_14

    .line 826
    .restart local v18       #onHold:Z
    :cond_37
    const/4 v4, 0x0

    goto :goto_15

    .line 833
    .restart local v4       #canHold:Z
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const v26, 0x2080a18

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const v26, 0x7f0e025a

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    goto :goto_16

    .line 859
    .end local v4           #canHold:Z
    .end local v18           #onHold:Z
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHTCViewContacts:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    goto/16 :goto_11

    .line 875
    :cond_3a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHTCViewContacts:Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_12

    .line 877
    :catch_0
    move-exception v8

    .line 878
    .local v8, e:Ljava/lang/Exception;
    const-string v25, "PHONE/InCallMenu"

    const-string v26, "Can\'t get CS LockScreen status"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12
.end method
