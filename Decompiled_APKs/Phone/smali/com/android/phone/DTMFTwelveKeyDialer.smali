.class public Lcom/android/phone/DTMFTwelveKeyDialer;
.super Ljava/lang/Object;
.source "DTMFTwelveKeyDialer.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DTMF_DURATION_MS:I = 0x78

.field private static final DTMF_SEND_CNF:I = 0x65

.field private static final LOG_TAG:Ljava/lang/String; = "DTMFTwelveKeyDialer"

.field private static final MODE_USER_INPUT:I = 0x1

.field private static final PHONE_DISCONNECT:I = 0x64

.field public static final SHOW_ACCUMULATOR_CALL_BUTTON:Z

.field private static final WIFI_CALLING_FIX:Z

.field private static final mDisplayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final mToneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private AccCallButton:Landroid/widget/ImageView;

.field private AccCallIcon:Landroid/widget/ImageView;

.field public isNeedCleared:Z

.field mAccumulatorBg:Landroid/widget/LinearLayout;

.field private mBackspace:Landroid/view/View;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mDTMFBurstCnfPending:Z

.field private mDTMFQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private mDTMFToneEnabled:Z

.field private mDTMFToneType:I

.field private mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

.field private mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

.field private mDigitsMode:I

.field private mHandler:Landroid/os/Handler;

.field private mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;

.field private misHandlingMultipleStartKey:Z

.field private resetMultipleStarKeyFlag:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x2a

    const/16 v6, 0x23

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    .line 126
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    const/16 v3, 0x31

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    const/16 v3, 0x33

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    const/16 v3, 0x34

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    const/16 v3, 0x35

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    const/16 v3, 0x36

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    const/16 v3, 0x37

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    const/16 v3, 0x38

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    const/16 v3, 0x39

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    const/16 v3, 0x30

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v3, 0x2020180

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x31

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v3, 0x2020181

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x32

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v3, 0x2020182

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x33

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v3, 0x2020183

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x34

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v3, 0x2020184

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x35

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v3, 0x2020185

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x36

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v3, 0x2020186

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x37

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v3, 0x2020187

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x38

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v3, 0x2020188

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x39

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v3, 0x2020189

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x30

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v3, 0x202001b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v3, 0x202001a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x9b

    if-ne v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xc

    if-eq v0, v3, :cond_1

    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd0

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v5, :cond_2

    :cond_1
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialer;->SHOW_ACCUMULATOR_CALL_BUTTON:Z

    .line 207
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x88

    if-ne v0, v3, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x96

    if-ne v0, v3, :cond_3

    :goto_1
    sput-boolean v2, Lcom/android/phone/DTMFTwelveKeyDialer;->WIFI_CALLING_FIX:Z

    return-void

    :cond_2
    move v0, v1

    .line 198
    goto :goto_0

    :cond_3
    move v2, v1

    .line 207
    goto :goto_1
.end method

.method public constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 5
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 430
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    .line 109
    iput-boolean v4, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFBurstCnfPending:Z

    .line 112
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFQueue:Ljava/util/Queue;

    .line 194
    iput-boolean v4, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->isNeedCleared:Z

    .line 391
    new-instance v1, Lcom/android/phone/DTMFTwelveKeyDialer$1;

    invoke-direct {v1, p0}, Lcom/android/phone/DTMFTwelveKeyDialer$1;-><init>(Lcom/android/phone/DTMFTwelveKeyDialer;)V

    iput-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mHandler:Landroid/os/Handler;

    .line 2047
    new-instance v1, Lcom/android/phone/DTMFTwelveKeyDialer$2;

    invoke-direct {v1, p0}, Lcom/android/phone/DTMFTwelveKeyDialer$2;-><init>(Lcom/android/phone/DTMFTwelveKeyDialer;)V

    iput-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->resetMultipleStarKeyFlag:Ljava/lang/Runnable;

    .line 432
    const-string v1, "DTMFTwelveKeyDialer"

    const-string v2, "OoO DTMFTwelveKeyDialer"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 435
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 452
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f080084

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/DTMFTwelveKeyDialerView;

    iput-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    .line 453
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    const v2, 0x1020009

    invoke-virtual {v1, v2}, Lcom/android/phone/DTMFTwelveKeyDialerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/widget/AccumulatorText;

    iput-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    .line 455
    new-instance v1, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;-><init>(Lcom/android/phone/DTMFTwelveKeyDialer;Landroid/widget/EditText;Lcom/android/phone/DTMFTwelveKeyDialer$1;)V

    iput-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

    .line 457
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->hasKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

    invoke-virtual {v1, v2}, Lcom/android/phone/widget/AccumulatorText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 464
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    invoke-virtual {v1, v4}, Lcom/android/phone/widget/AccumulatorText;->setLongClickable(Z)V

    .line 479
    :cond_0
    sget-boolean v1, Lcom/android/phone/DTMFTwelveKeyDialer;->SHOW_ACCUMULATOR_CALL_BUTTON:Z

    if-eqz v1, :cond_1

    .line 480
    const/4 v1, 0x1

    new-array v0, v1, [I

    const/16 v1, 0x1c

    aput v1, v0, v4

    .line 481
    .local v0, fixedFontSize:[I
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    invoke-virtual {v1, v0}, Lcom/android/phone/widget/AccumulatorText;->setTextSizes([I)V

    .line 485
    .end local v0           #fixedFontSize:[I
    :cond_1
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-direct {p0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->applyThemeActivitly(Landroid/view/View;)V

    .line 487
    return-void
.end method

.method public constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/DTMFTwelveKeyDialerView;Landroid/widget/SlidingDrawer;)V
    .locals 0
    .parameter "parent"
    .parameter "dialerView"
    .parameter "dialerDrawer"

    .prologue
    .line 585
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 586
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-static {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/DTMFTwelveKeyDialer;C)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->processDtmf(C)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/phone/DTMFTwelveKeyDialer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->misHandlingMultipleStartKey:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/DTMFTwelveKeyDialer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopTone()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/DTMFTwelveKeyDialer;)Lcom/android/phone/widget/AccumulatorText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/DTMFTwelveKeyDialer;)Lcom/android/phone/DTMFTwelveKeyDialerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/DTMFTwelveKeyDialer;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/DTMFTwelveKeyDialer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/DTMFTwelveKeyDialer;)Ljava/util/Queue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/phone/DTMFTwelveKeyDialer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFBurstCnfPending:Z

    return p1
.end method

.method private applyThemeActivitly(Landroid/view/View;)V
    .locals 6
    .parameter "dialerView"

    .prologue
    const v4, 0x7f080081

    .line 490
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 492
    const-string v2, ""

    invoke-static {}, Lcom/android/phone/theme/ThemeAdapter;->getSkinPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 493
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 494
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "common_panel_input_base"

    const-string v4, "drawable"

    const-string v5, "com.android.phone"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 497
    .local v0, resid:I
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 498
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 507
    .end local v0           #resid:I
    .end local v1           #view:Landroid/view/View;
    :cond_0
    :goto_0
    const v2, 0x202016a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "common_b_button_small"

    invoke-direct {p0, v2, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->applyThemeBackgroundResource(Landroid/view/View;Ljava/lang/String;)V

    .line 513
    const v2, 0x2020180

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "htc_dial_button"

    invoke-direct {p0, v2, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->applyThemeBackgroundResource(Landroid/view/View;Ljava/lang/String;)V

    .line 516
    const v2, 0x2020181

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "htc_dial_button"

    invoke-direct {p0, v2, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->applyThemeBackgroundResource(Landroid/view/View;Ljava/lang/String;)V

    .line 519
    const v2, 0x2020182

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "htc_dial_button"

    invoke-direct {p0, v2, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->applyThemeBackgroundResource(Landroid/view/View;Ljava/lang/String;)V

    .line 522
    const v2, 0x2020183

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "htc_dial_button"

    invoke-direct {p0, v2, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->applyThemeBackgroundResource(Landroid/view/View;Ljava/lang/String;)V

    .line 525
    const v2, 0x2020184

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "htc_dial_button"

    invoke-direct {p0, v2, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->applyThemeBackgroundResource(Landroid/view/View;Ljava/lang/String;)V

    .line 528
    const v2, 0x2020185

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "htc_dial_button"

    invoke-direct {p0, v2, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->applyThemeBackgroundResource(Landroid/view/View;Ljava/lang/String;)V

    .line 531
    const v2, 0x2020186

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "htc_dial_button"

    invoke-direct {p0, v2, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->applyThemeBackgroundResource(Landroid/view/View;Ljava/lang/String;)V

    .line 534
    const v2, 0x2020187

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "htc_dial_button"

    invoke-direct {p0, v2, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->applyThemeBackgroundResource(Landroid/view/View;Ljava/lang/String;)V

    .line 537
    const v2, 0x2020188

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "htc_dial_button"

    invoke-direct {p0, v2, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->applyThemeBackgroundResource(Landroid/view/View;Ljava/lang/String;)V

    .line 540
    const v2, 0x2020189

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "htc_dial_button"

    invoke-direct {p0, v2, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->applyThemeBackgroundResource(Landroid/view/View;Ljava/lang/String;)V

    .line 543
    const v2, 0x202001a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "htc_dial_button"

    invoke-direct {p0, v2, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->applyThemeBackgroundResource(Landroid/view/View;Ljava/lang/String;)V

    .line 546
    const v2, 0x202001b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "htc_dial_button"

    invoke-direct {p0, v2, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->applyThemeBackgroundResource(Landroid/view/View;Ljava/lang/String;)V

    .line 550
    :cond_1
    return-void

    .line 502
    :cond_2
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "common_panel_input_base"

    invoke-direct {p0, v2, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->applyThemeBackgroundResource(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private applyThemeBackgroundResource(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "resName"

    .prologue
    .line 555
    const-string v1, "applyThemeBackgroundResource()..."

    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 557
    const-string v1, "drawable"

    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Lcom/android/phone/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 559
    .local v0, resId:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - resId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 561
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 562
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 567
    :goto_0
    return-void

    .line 565
    :cond_0
    const-string v1, " - View can\'t be found."

    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initDigitsArea(Landroid/widget/TextView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 956
    if-nez p1, :cond_0

    .line 966
    :goto_0
    return-void

    .line 960
    :cond_0
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isHardKeyboardHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 961
    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 963
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 964
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 965
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 960
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static isDialable(I)Z
    .locals 6
    .parameter "keyCode"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2094
    const/4 v5, 0x7

    if-gt v5, p0, :cond_2

    const/16 v5, 0x10

    if-lt v5, p0, :cond_2

    move v1, v4

    .line 2096
    .local v1, isDigit:Z
    :goto_0
    const/16 v5, 0x11

    if-gt v5, p0, :cond_3

    const/16 v5, 0x12

    if-lt v5, p0, :cond_3

    move v2, v4

    .line 2098
    .local v2, isPW:Z
    :goto_1
    const/16 v5, 0x1d

    if-gt v5, p0, :cond_4

    const/16 v5, 0x36

    if-lt v5, p0, :cond_4

    move v0, v4

    .line 2100
    .local v0, isAlphabet:Z
    :goto_2
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v3, v4

    :cond_1
    return v3

    .end local v0           #isAlphabet:Z
    .end local v1           #isDigit:Z
    .end local v2           #isPW:Z
    :cond_2
    move v1, v3

    .line 2094
    goto :goto_0

    .restart local v1       #isDigit:Z
    :cond_3
    move v2, v3

    .line 2096
    goto :goto_1

    .restart local v2       #isPW:Z
    :cond_4
    move v0, v3

    .line 2098
    goto :goto_2
.end method

.method private keyPressed(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 1008
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1009
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    invoke-virtual {v1, p1, v0}, Lcom/android/phone/widget/AccumulatorText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 1010
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1444
    const-string v0, "DTMFTwelveKeyDialer"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    return-void
.end method

.method private onDialerClose()V
    .locals 3

    .prologue
    .line 811
    const-string v1, "onDialerClose()..."

    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 812
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setVisibility(I)V

    .line 814
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 815
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 817
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 819
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopDialerSession()V

    .line 822
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_0

    .line 823
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->onDialerClose()V

    .line 825
    :cond_0
    return-void
.end method

.method private onDialerOpen()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 659
    const-string v2, "onDialerOpen()..."

    invoke-static {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 664
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v2, p0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setDialer(Lcom/android/phone/DTMFTwelveKeyDialer;)V

    .line 669
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v6}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 672
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 673
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 680
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    new-instance v3, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

    invoke-direct {v3, p0, v6, v6}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;-><init>(Lcom/android/phone/DTMFTwelveKeyDialer;Landroid/widget/EditText;Lcom/android/phone/DTMFTwelveKeyDialer$1;)V

    invoke-virtual {v2, v3}, Lcom/android/phone/widget/AccumulatorText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 683
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x8a

    if-ne v2, v3, :cond_2

    .line 684
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    const/high16 v3, 0x7f07

    invoke-virtual {v2, v3}, Lcom/android/phone/widget/AccumulatorText;->setTextSizes(I)V

    .line 691
    :goto_0
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    invoke-direct {p0, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->initDigitsArea(Landroid/widget/TextView;)V

    .line 694
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    invoke-virtual {v2, v5}, Lcom/android/phone/widget/AccumulatorText;->setLongClickable(Z)V

    .line 695
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    invoke-virtual {v2, p0}, Lcom/android/phone/widget/AccumulatorText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 698
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    const v3, 0x2020180

    invoke-virtual {v2, v3}, Lcom/android/phone/DTMFTwelveKeyDialerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 700
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v2, p0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 702
    if-eqz v1, :cond_3

    .line 704
    const-string v2, "portrait mode setup"

    invoke-static {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 705
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->setupKeypad()V

    .line 723
    :goto_1
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    const v3, 0x7f080082

    invoke-virtual {v2, v3}, Lcom/android/phone/DTMFTwelveKeyDialerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mAccumulatorBg:Landroid/widget/LinearLayout;

    .line 724
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    const v3, 0x7f080083

    invoke-virtual {v2, v3}, Lcom/android/phone/DTMFTwelveKeyDialerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->AccCallIcon:Landroid/widget/ImageView;

    .line 725
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    const v3, 0x7f080024

    invoke-virtual {v2, v3}, Lcom/android/phone/DTMFTwelveKeyDialerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->AccCallButton:Landroid/widget/ImageView;

    .line 726
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->AccCallIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 727
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->AccCallIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 730
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mBackspace:Landroid/view/View;

    if-nez v2, :cond_0

    .line 731
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    const v3, 0x202016a

    invoke-virtual {v2, v3}, Lcom/android/phone/DTMFTwelveKeyDialerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mBackspace:Landroid/view/View;

    .line 732
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mBackspace:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 733
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mBackspace:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 738
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->startDialerSession()V

    .line 739
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v2, v5}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setVisibility(I)V

    .line 741
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->onDialerOpen()V

    .line 743
    iget-boolean v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->isNeedCleared:Z

    if-eqz v2, :cond_1

    .line 744
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 745
    iput-boolean v5, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->isNeedCleared:Z

    .line 748
    :cond_1
    return-void

    .line 686
    .end local v1           #view:Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    const v3, 0x2070007

    invoke-virtual {v2, v3}, Lcom/android/phone/widget/AccumulatorText;->setTextSizes(I)V

    goto/16 :goto_0

    .line 708
    .restart local v1       #view:Landroid/view/View;
    :cond_3
    const-string v2, "landscape mode setup"

    invoke-static {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 711
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    const v3, 0x7f0e03c6

    invoke-virtual {v2, v3}, Lcom/android/phone/widget/AccumulatorText;->setHint(I)V

    goto :goto_1
.end method

.method private final processDtmf(C)V
    .locals 2
    .parameter "c"

    .prologue
    .line 1309
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updating display and sending dtmf tone for \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 1323
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1325
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->startTone(C)V

    .line 1332
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 1333
    return-void

    .line 1328
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignoring dtmf request for \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processMultipleStarKey(Landroid/text/Editable;)V
    .locals 10
    .parameter "digits"

    .prologue
    const/16 v9, 0x77

    const/16 v8, 0x70

    const/4 v7, 0x1

    const/16 v6, 0x2a

    .line 2061
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 2062
    .local v2, pos:I
    const-string v3, "key"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->misHandlingMultipleStartKey:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n pos: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    iget-boolean v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->misHandlingMultipleStartKey:Z

    if-ne v7, v3, :cond_4

    if-lez v2, :cond_4

    .line 2065
    add-int/lit8 v0, v2, -0x1

    .line 2066
    .local v0, anchor:I
    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    .line 2067
    .local v1, anchorChar:C
    const-string v3, "key"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "anchor char: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    if-ne v6, v1, :cond_1

    .line 2070
    add-int/lit8 v3, v0, 0x1

    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v0, v3, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2082
    .end local v0           #anchor:I
    .end local v1           #anchorChar:C
    :goto_0
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 2083
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->resetMultipleStarKeyFlag:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2084
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->resetMultipleStarKeyFlag:Ljava/lang/Runnable;

    const-wide/16 v5, 0x4b0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2085
    iput-boolean v7, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->misHandlingMultipleStartKey:Z

    .line 2087
    :cond_0
    return-void

    .line 2071
    .restart local v0       #anchor:I
    .restart local v1       #anchorChar:C
    :cond_1
    if-ne v8, v1, :cond_2

    .line 2072
    add-int/lit8 v3, v0, 0x1

    invoke-static {v9}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v0, v3, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 2073
    :cond_2
    if-ne v9, v1, :cond_3

    .line 2074
    add-int/lit8 v3, v0, 0x1

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v0, v3, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 2076
    :cond_3
    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 2079
    .end local v0           #anchor:I
    .end local v1           #anchorChar:C
    :cond_4
    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method

.method private sendShortDtmfToNetwork(C)V
    .locals 7
    .parameter "dtmfDigit"

    .prologue
    const/4 v3, 0x1

    .line 1559
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFQueue:Ljava/util/Queue;

    monitor-enter v2

    .line 1560
    :try_start_0
    iget-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFBurstCnfPending:Z

    if-ne v1, v3, :cond_0

    .line 1562
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFQueue:Ljava/util/Queue;

    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1565
    const-string v1, "DTMFTwelveKeyDialer"

    const-string v3, "sendShortDtmfToNetwork(), Insert to DTMF queue()."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    :goto_0
    monitor-exit v2

    .line 1576
    return-void

    .line 1569
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    .line 1571
    .local v0, dtmfStr:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x65

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v0, v3, v4, v5}, Lcom/android/internal/telephony/CallManager;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)Z

    .line 1573
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFBurstCnfPending:Z

    goto :goto_0

    .line 1575
    .end local v0           #dtmfStr:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setAccumulatorCallBtnVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 2113
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialer;->SHOW_ACCUMULATOR_CALL_BUTTON:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2121
    :cond_0
    :goto_0
    return-void

    .line 2115
    :cond_1
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->AccCallIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 2116
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->AccCallIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2118
    :cond_2
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->AccCallButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2119
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->AccCallButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupKeypad()V
    .locals 4

    .prologue
    .line 933
    sget-object v3, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 935
    .local v2, viewId:I
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v3, v2}, Lcom/android/phone/DTMFTwelveKeyDialerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 937
    .local v0, button:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 939
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 940
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 942
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 950
    .end local v0           #button:Landroid/view/View;
    .end local v2           #viewId:I
    :cond_0
    return-void
.end method

.method private startTone(C)V
    .locals 2
    .parameter "c"

    .prologue
    .line 1452
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1466
    :cond_0
    :goto_0
    return-void

    .line 1455
    :cond_1
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1456
    .local v0, phoneType:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1457
    invoke-virtual {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->startToneCdma(C)V

    .line 1463
    :goto_1
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1464
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopTone()V

    goto :goto_0

    .line 1459
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->startDtmfTone(C)V

    goto :goto_1
.end method

.method private stopTone()V
    .locals 3

    .prologue
    .line 1473
    const/4 v0, 0x0

    .line 1474
    .local v0, phoneType:I
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1476
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1478
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopTone(), phoneType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 1491
    :goto_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1493
    iget v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFToneType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1494
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopToneCdma()V

    .line 1499
    :cond_0
    :goto_1
    return-void

    .line 1482
    :cond_1
    const-string v1, "stopTone(), can not get default Phone!"

    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 1483
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopToneCdma()V

    .line 1484
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopDtmfTone()V

    goto :goto_1

    .line 1489
    :cond_2
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    goto :goto_0

    .line 1497
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopDtmfTone()V

    goto :goto_1
.end method

.method private stopToneCdma()V
    .locals 1

    .prologue
    .line 1584
    const-string v0, "stopping remote tone."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 1586
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->stopDtmf()V

    .line 1587
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneCdma()V

    .line 1588
    return-void
.end method

.method private switchDigitsMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x1

    .line 1825
    iget v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDigitsMode:I

    if-ne v0, p1, :cond_1

    .line 1853
    :cond_0
    :goto_0
    return-void

    .line 1828
    :cond_1
    iput p1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDigitsMode:I

    .line 1829
    if-ne v2, p1, :cond_0

    .line 1830
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/AccumulatorText;->setVisibility(I)V

    .line 1831
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    invoke-virtual {v0}, Lcom/android/phone/widget/AccumulatorText;->requestFocus()Z

    .line 1832
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mBackspace:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "input"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 1863
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1865
    invoke-direct {p0, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->setAccumulatorCallBtnVisibility(I)V

    .line 1883
    :goto_0
    return-void

    .line 1869
    :cond_0
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1871
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    invoke-virtual {v0}, Lcom/android/phone/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 1872
    invoke-virtual {p0, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 1873
    invoke-direct {p0, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->setAccumulatorCallBtnVisibility(I)V

    goto :goto_0

    .line 1876
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->switchDigitsMode(I)V

    .line 1878
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->setAccumulatorCallBtnVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1857
    return-void
.end method

.method public clearDigits()V
    .locals 2

    .prologue
    .line 1362
    const-string v0, "clearDigits()..."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 1364
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    if-eqz v0, :cond_0

    .line 1365
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/AccumulatorText;->setText(Ljava/lang/CharSequence;)V

    .line 1367
    :cond_0
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    if-eqz v0, :cond_1

    .line 1368
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/AccumulatorText;->setText(Ljava/lang/CharSequence;)V

    .line 1370
    :cond_1
    return-void
.end method

.method clearInCallScreenReference()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 627
    iput-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 628
    iput-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

    .line 629
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/AccumulatorText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 631
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/AccumulatorText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 632
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/AccumulatorText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 633
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/AccumulatorText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 642
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 643
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 644
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFQueue:Ljava/util/Queue;

    monitor-enter v1

    .line 645
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFBurstCnfPending:Z

    .line 646
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 647
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 651
    return-void

    .line 647
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public closeDialer(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 1249
    sget-boolean v0, Lcom/android/phone/util/BuildUtils;->SENSE_TABLET:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1268
    :cond_0
    :goto_0
    return-void

    .line 1253
    :cond_1
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1254
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setVisibility(I)V

    .line 1258
    :cond_2
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    .line 1259
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->updateKeypadIcon()V

    goto :goto_0
.end method

.method destroy()V
    .locals 1

    .prologue
    .line 2035
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-eqz v0, :cond_0

    .line 2036
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2037
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerClose()V

    .line 2040
    :cond_0
    return-void
.end method

.method public getDialerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 2124
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    return-object v0
.end method

.method handleBurstDtmfConfirmation()V
    .locals 6

    .prologue
    .line 1615
    const/4 v1, 0x0

    .line 1616
    .local v1, dtmfChar:Ljava/lang/Character;
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFQueue:Ljava/util/Queue;

    monitor-enter v3

    .line 1617
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFBurstCnfPending:Z

    .line 1618
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1619
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Character;

    move-object v1, v0

    .line 1620
    const-string v2, "DTMFTwelveKeyDialer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The dtmf character removed from queue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1623
    if-eqz v1, :cond_1

    .line 1624
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->sendShortDtmfToNetwork(C)V

    .line 1626
    :cond_1
    return-void

    .line 1622
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public hideDTMFDisplay(Z)V
    .locals 0
    .parameter "shouldHide"

    .prologue
    .line 619
    return-void
.end method

.method isKeyEventAcceptable(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isDialable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpened()Z
    .locals 2

    .prologue
    .line 1205
    const/4 v0, 0x0

    .line 1207
    .local v0, isOpened:Z
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialerView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1208
    const/4 v0, 0x1

    .line 1210
    :cond_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 1060
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1061
    .local v0, id:I
    sparse-switch v0, :sswitch_data_0

    .line 1124
    :cond_0
    :goto_0
    return-void

    .line 1063
    :sswitch_0
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Lcom/android/phone/widget/AccumulatorText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1067
    :sswitch_1
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Lcom/android/phone/widget/AccumulatorText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1071
    :sswitch_2
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Lcom/android/phone/widget/AccumulatorText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1075
    :sswitch_3
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    const-string v4, "3"

    invoke-virtual {v3, v4}, Lcom/android/phone/widget/AccumulatorText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1079
    :sswitch_4
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    const-string v4, "4"

    invoke-virtual {v3, v4}, Lcom/android/phone/widget/AccumulatorText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1083
    :sswitch_5
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    const-string v4, "5"

    invoke-virtual {v3, v4}, Lcom/android/phone/widget/AccumulatorText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1087
    :sswitch_6
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    const-string v4, "6"

    invoke-virtual {v3, v4}, Lcom/android/phone/widget/AccumulatorText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1091
    :sswitch_7
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    const-string v4, "7"

    invoke-virtual {v3, v4}, Lcom/android/phone/widget/AccumulatorText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1095
    :sswitch_8
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    const-string v4, "8"

    invoke-virtual {v3, v4}, Lcom/android/phone/widget/AccumulatorText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1099
    :sswitch_9
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    const-string v4, "9"

    invoke-virtual {v3, v4}, Lcom/android/phone/widget/AccumulatorText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1103
    :sswitch_a
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    invoke-virtual {v3}, Lcom/android/phone/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->processMultipleStarKey(Landroid/text/Editable;)V

    goto :goto_0

    .line 1107
    :sswitch_b
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    const-string v4, "#"

    invoke-virtual {v3, v4}, Lcom/android/phone/widget/AccumulatorText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1111
    :sswitch_c
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    invoke-virtual {v3}, Lcom/android/phone/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1112
    .local v2, text:Landroid/text/Editable;
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v1

    .line 1118
    .local v1, length:I
    if-lez v1, :cond_0

    .line 1119
    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 1061
    :sswitch_data_0
    .sparse-switch
        0x202001a -> :sswitch_a
        0x202001b -> :sswitch_b
        0x202016a -> :sswitch_c
        0x2020180 -> :sswitch_1
        0x2020181 -> :sswitch_2
        0x2020182 -> :sswitch_3
        0x2020183 -> :sswitch_4
        0x2020184 -> :sswitch_5
        0x2020185 -> :sswitch_6
        0x2020186 -> :sswitch_7
        0x2020187 -> :sswitch_8
        0x2020188 -> :sswitch_9
        0x2020189 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDialerKeyDown(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 913
    const-string v0, "Notifying dtmf key down."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 914
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

    invoke-virtual {v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->onKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onDialerKeyUp(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 923
    const-string v0, "Notifying dtmf key up."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 924
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

    invoke-virtual {v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->onKeyUp(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1177
    const/16 v1, 0x17

    if-ne p2, v1, :cond_0

    .line 1178
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1179
    .local v0, viewId:I
    sget-object v1, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1180
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1196
    .end local v0           #viewId:I
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 1182
    .restart local v0       #viewId:I
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1183
    sget-object v1, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->processDtmf(C)V

    goto :goto_0

    .line 1187
    :pswitch_1
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1188
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopTone()V

    goto :goto_0

    .line 1180
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1019
    sparse-switch p1, :sswitch_data_0

    .line 1037
    invoke-direct {p0, v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->switchDigitsMode(I)V

    .line 1038
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    invoke-virtual {v1, p1, p2}, Lcom/android/phone/widget/AccumulatorText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1044
    :goto_0
    return v0

    .line 1024
    :sswitch_0
    const-string v1, "exit requested"

    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {p0, v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    goto :goto_0

    .line 1030
    :sswitch_1
    iget v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDigitsMode:I

    if-ne v1, v0, :cond_0

    .line 1031
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->placeCall()V

    .line 1044
    :cond_0
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/InCallScreen;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1019
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x17 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/InCallScreen;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v3, 0x1

    .line 1636
    iget-object v4, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    invoke-virtual {v4}, Lcom/android/phone/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1639
    .local v0, digits:Landroid/text/Editable;
    iget-object v4, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1815
    :goto_0
    return v2

    .line 1642
    :cond_0
    iget-object v4, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 1645
    .local v1, phoneType:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 1654
    :sswitch_0
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->AccCallIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_1

    .line 1655
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->placeCall()V

    move v2, v3

    .line 1656
    goto :goto_0

    .line 1648
    :sswitch_1
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    move v2, v3

    .line 1649
    goto :goto_0

    .line 1664
    :cond_1
    :sswitch_2
    if-eq v1, v5, :cond_2

    .line 1665
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopTone()V

    .line 1669
    :cond_2
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    const-string v4, "+"

    invoke-virtual {v2, v4}, Lcom/android/phone/widget/AccumulatorText;->append(Ljava/lang/CharSequence;)V

    move v2, v3

    .line 1670
    goto :goto_0

    .line 1678
    :sswitch_3
    if-eq v1, v5, :cond_3

    .line 1679
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopTone()V

    .line 1683
    :cond_3
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    const-string v4, "1"

    invoke-virtual {v2, v4}, Lcom/android/phone/widget/AccumulatorText;->append(Ljava/lang/CharSequence;)V

    move v2, v3

    .line 1685
    goto :goto_0

    .line 1693
    :sswitch_4
    if-eq v1, v5, :cond_4

    .line 1694
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopTone()V

    .line 1698
    :cond_4
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    const-string v4, "2"

    invoke-virtual {v2, v4}, Lcom/android/phone/widget/AccumulatorText;->append(Ljava/lang/CharSequence;)V

    move v2, v3

    .line 1699
    goto :goto_0

    .line 1707
    :sswitch_5
    if-eq v1, v5, :cond_5

    .line 1708
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopTone()V

    .line 1712
    :cond_5
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    const-string v4, "3"

    invoke-virtual {v2, v4}, Lcom/android/phone/widget/AccumulatorText;->append(Ljava/lang/CharSequence;)V

    move v2, v3

    .line 1713
    goto :goto_0

    .line 1721
    :sswitch_6
    if-eq v1, v5, :cond_6

    .line 1722
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopTone()V

    .line 1726
    :cond_6
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    const-string v4, "4"

    invoke-virtual {v2, v4}, Lcom/android/phone/widget/AccumulatorText;->append(Ljava/lang/CharSequence;)V

    move v2, v3

    .line 1727
    goto :goto_0

    .line 1735
    :sswitch_7
    if-eq v1, v5, :cond_7

    .line 1736
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopTone()V

    .line 1740
    :cond_7
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    const-string v4, "5"

    invoke-virtual {v2, v4}, Lcom/android/phone/widget/AccumulatorText;->append(Ljava/lang/CharSequence;)V

    move v2, v3

    .line 1741
    goto :goto_0

    .line 1749
    :sswitch_8
    if-eq v1, v5, :cond_8

    .line 1750
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopTone()V

    .line 1754
    :cond_8
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    const-string v4, "6"

    invoke-virtual {v2, v4}, Lcom/android/phone/widget/AccumulatorText;->append(Ljava/lang/CharSequence;)V

    move v2, v3

    .line 1755
    goto/16 :goto_0

    .line 1763
    :sswitch_9
    if-eq v1, v5, :cond_9

    .line 1764
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopTone()V

    .line 1768
    :cond_9
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    const-string v4, "7"

    invoke-virtual {v2, v4}, Lcom/android/phone/widget/AccumulatorText;->append(Ljava/lang/CharSequence;)V

    move v2, v3

    .line 1769
    goto/16 :goto_0

    .line 1777
    :sswitch_a
    if-eq v1, v5, :cond_a

    .line 1778
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopTone()V

    .line 1782
    :cond_a
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    const-string v4, "8"

    invoke-virtual {v2, v4}, Lcom/android/phone/widget/AccumulatorText;->append(Ljava/lang/CharSequence;)V

    move v2, v3

    .line 1783
    goto/16 :goto_0

    .line 1791
    :sswitch_b
    if-eq v1, v5, :cond_b

    .line 1792
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopTone()V

    .line 1796
    :cond_b
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    const-string v4, "9"

    invoke-virtual {v2, v4}, Lcom/android/phone/widget/AccumulatorText;->append(Ljava/lang/CharSequence;)V

    move v2, v3

    .line 1797
    goto/16 :goto_0

    .line 1801
    :sswitch_c
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopTone()V

    .line 1803
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    const-string v4, "*"

    invoke-virtual {v2, v4}, Lcom/android/phone/widget/AccumulatorText;->append(Ljava/lang/CharSequence;)V

    move v2, v3

    .line 1805
    goto/16 :goto_0

    .line 1809
    :sswitch_d
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopTone()V

    .line 1811
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    const-string v4, "#"

    invoke-virtual {v2, v4}, Lcom/android/phone/widget/AccumulatorText;->append(Ljava/lang/CharSequence;)V

    move v2, v3

    .line 1812
    goto/16 :goto_0

    .line 1645
    :sswitch_data_0
    .sparse-switch
        0x1020009 -> :sswitch_0
        0x202016a -> :sswitch_1
        0x7f080083 -> :sswitch_0
        0x7f08008f -> :sswitch_3
        0x7f080090 -> :sswitch_4
        0x7f080091 -> :sswitch_5
        0x7f080092 -> :sswitch_6
        0x7f080093 -> :sswitch_7
        0x7f080094 -> :sswitch_8
        0x7f080095 -> :sswitch_9
        0x7f080096 -> :sswitch_a
        0x7f080097 -> :sswitch_b
        0x7f080098 -> :sswitch_c
        0x7f080099 -> :sswitch_2
        0x7f08009a -> :sswitch_d
    .end sparse-switch
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 903
    const-string v0, "callerinfo query complete, updating ui."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 905
    check-cast p2, Landroid/widget/TextView;

    .end local p2
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {p3, v0}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 906
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "input"
    .parameter "start"
    .parameter "before"
    .parameter "changeCount"

    .prologue
    .line 1860
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1131
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1132
    .local v1, viewId:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1135
    .local v0, action:I
    sget-object v3, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1136
    packed-switch v0, :pswitch_data_0

    .line 1167
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v2, 0x0

    :cond_1
    :goto_1
    return v2

    .line 1140
    :pswitch_1
    sget-object v2, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->processDtmf(C)V

    goto :goto_0

    .line 1145
    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopTone()V

    goto :goto_0

    .line 1152
    :cond_2
    const v3, 0x1020009

    if-eq v1, v3, :cond_3

    const v3, 0x7f080083

    if-ne v1, v3, :cond_5

    .line 1154
    :cond_3
    if-eqz v0, :cond_4

    if-ne v0, v2, :cond_0

    .line 1155
    :cond_4
    if-nez v0, :cond_1

    .line 1156
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->placeCall()V

    goto :goto_1

    .line 1163
    :cond_5
    const v3, 0x7f080084

    if-ne v1, v3, :cond_0

    goto :goto_1

    .line 1136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public openDialer(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setVisibility(I)V

    .line 1228
    :cond_0
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    .line 1229
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->updateKeypadIcon()V

    .line 1238
    :cond_1
    return-void
.end method

.method openOrCloseKeypad()V
    .locals 2

    .prologue
    .line 2017
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-eqz v1, :cond_2

    .line 2018
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialerView;->getVisibility()I

    move-result v0

    .line 2019
    .local v0, visibility:I
    if-nez v0, :cond_1

    .line 2020
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerClose()V

    .line 2028
    .end local v0           #visibility:I
    :goto_0
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_0

    .line 2029
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->updateKeypadIcon()V

    .line 2032
    :cond_0
    return-void

    .line 2022
    .restart local v0       #visibility:I
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerOpen()V

    goto :goto_0

    .line 2025
    .end local v0           #visibility:I
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerOpen()V

    goto :goto_0
.end method

.method public placeCall()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 969
    const/4 v1, 0x0

    .line 971
    .local v1, number:Ljava/lang/String;
    iget v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDigitsMode:I

    if-ne v2, v3, :cond_0

    .line 972
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    invoke-virtual {v2}, Lcom/android/phone/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 975
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 977
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    if-eqz v2, :cond_3

    .line 978
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    invoke-virtual {v2}, Lcom/android/phone/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 983
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1005
    :cond_2
    :goto_1
    return-void

    .line 980
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 990
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 992
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 994
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 999
    invoke-static {v0}, Lcom/htc/util/phone/DialUtils;->callDirectly(Landroid/content/Intent;)Z

    .line 1002
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;

    invoke-virtual {v2}, Lcom/android/phone/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    goto :goto_1
.end method

.method public setHandleVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1282
    return-void
.end method

.method public startDialerSession()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 756
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startDialerSession()... this = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 759
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 760
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dtmf_tone"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFToneEnabled:Z

    .line 766
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- startDialerSession: mDTMFToneEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFToneEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 772
    iget-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFToneEnabled:Z

    if-eqz v1, :cond_1

    .line 773
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 774
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 777
    :try_start_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->isHandsFreePlugged()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 778
    const-string v1, "DTMFDIALER"

    const-string v3, "Headset is plugged"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v3, 0x8

    const/16 v4, 0x46

    invoke-direct {v1, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 801
    :cond_0
    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 803
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 760
    goto :goto_0

    .line 763
    :cond_3
    iput-boolean v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFToneEnabled:Z

    goto :goto_1

    .line 782
    :cond_4
    :try_start_3
    const-string v1, "DTMFDIALER"

    const-string v3, "Headset is not plugged"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    sget-boolean v1, Lcom/android/phone/DTMFTwelveKeyDialer;->WIFI_CALLING_FIX:Z

    if-eqz v1, :cond_5

    .line 786
    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v3, 0x8

    const/16 v4, 0x28

    invoke-direct {v1, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 795
    :catch_0
    move-exception v0

    .line 797
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught while creating local tone generator: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 798
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_2

    .line 801
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 788
    :cond_5
    :try_start_5
    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v3, 0x8

    const/16 v4, 0x64

    invoke-direct {v1, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2
.end method

.method startDtmfTone(C)V
    .locals 4
    .parameter "tone"

    .prologue
    .line 1383
    const-string v0, "startDtmfTone()..."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 1384
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->startDtmf(C)Z

    .line 1387
    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFToneEnabled:Z

    if-eqz v0, :cond_0

    .line 1388
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1389
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_1

    .line 1391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDtmfTone: mToneGenerator == null, tone: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 1397
    :goto_0
    monitor-exit v1

    .line 1399
    :cond_0
    return-void

    .line 1394
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "starting local tone "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 1395
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto :goto_0

    .line 1397
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method startLocalToneCdma(C)V
    .locals 5
    .parameter "tone"

    .prologue
    .line 1529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startLocalToneCdma(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDTMFToneEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFToneEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 1533
    iget-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFToneEnabled:Z

    if-eqz v1, :cond_0

    .line 1534
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1535
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v1, :cond_1

    .line 1537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startToneCdma: mToneGenerator == null, tone: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 1549
    :goto_0
    monitor-exit v2

    .line 1551
    :cond_0
    return-void

    .line 1540
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "starting local tone "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 1543
    const/4 v0, -0x1

    .line 1544
    .local v0, toneDuration:I
    iget v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFToneType:I

    if-nez v1, :cond_2

    .line 1545
    const/16 v0, 0x78

    .line 1547
    :cond_2
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    sget-object v1, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1, v0}, Landroid/media/ToneGenerator;->startTone(II)Z

    goto :goto_0

    .line 1549
    .end local v0           #toneDuration:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method startToneCdma(C)V
    .locals 3
    .parameter "tone"

    .prologue
    .line 1506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startToneCdma(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 1509
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dtmf_tone_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFToneType:I

    .line 1513
    iget v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFToneType:I

    if-nez v0, :cond_0

    .line 1514
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->sendShortDtmfToNetwork(C)V

    .line 1521
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->startLocalToneCdma(C)V

    .line 1522
    return-void

    .line 1517
    :cond_0
    const-string v0, "DTMFTwelveKeyDialer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send long dtmf for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->startDtmf(C)Z

    goto :goto_0
.end method

.method public stopDialerSession()V
    .locals 2

    .prologue
    .line 833
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 834
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 836
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 838
    :cond_0
    monitor-exit v1

    .line 839
    return-void

    .line 838
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method stopDtmfTone()V
    .locals 2

    .prologue
    .line 1413
    const-string v0, "stopDtmfTone()..."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 1414
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->stopDtmf()V

    .line 1418
    const-string v0, "trying to stop local tone..."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 1419
    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFToneEnabled:Z

    if-eqz v0, :cond_0

    .line 1420
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1421
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_1

    .line 1423
    const-string v0, "stopDtmfTone: mToneGenerator == null"

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 1429
    :goto_0
    monitor-exit v1

    .line 1431
    :cond_0
    return-void

    .line 1426
    :cond_1
    const-string v0, "stopping local tone."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 1427
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    goto :goto_0

    .line 1429
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method stopLocalToneCdma()V
    .locals 2

    .prologue
    .line 1596
    const-string v0, "trying to stop local tone..."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 1597
    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFToneEnabled:Z

    if-eqz v0, :cond_0

    .line 1598
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1599
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_1

    .line 1601
    const-string v0, "stopLocalToneCdma: mToneGenerator == null"

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 1607
    :goto_0
    monitor-exit v1

    .line 1609
    :cond_0
    return-void

    .line 1604
    :cond_1
    const-string v0, "stopping local tone."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 1605
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    goto :goto_0

    .line 1607
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
