.class public Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;
.super Lcom/htc/android/htcime/ezsip/EZSIPView;
.source "PortQwertySIPViewTutorial.java"

# interfaces
.implements Lcom/htc/android/htcime/Intf/IHTCSIP;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PortQwertySIPViewTutorial"

.field public static final sChangeInput:Ljava/lang/String; = "tutorChangeInput"

.field public static final sMRCString:[Ljava/lang/String;


# instance fields
.field final DEBUG:Z

.field final END_TUTORIAL:I

.field final HANDEL_END_TUTORIAL:I

.field final LONGPRESS:I

.field final LP_TUTOR_CLOSE:I

.field final LP_TUTOR_END:I

.field final LP_TUTOR_F:I

.field final LP_TUTOR_FHINT:I

.field final LP_TUTOR_G:I

.field final LP_TUTOR_GHINT:I

.field final LP_TUTOR_HINT:I

.field final LP_TUTOR_INIT:I

.field final LP_TUTOR_NEXT:I

.field final LP_TUTOR_START:I

.field final LP_TUTOR_SYM:I

.field final LP_TUTOR_SYMHINT:I

.field final MORE_REGIONALCORRECTION:I

.field final MRC_END_TUTORIAL:I

.field final MRC_HANDLE_END_TUTORIAL:I

.field final MRC_PRE_START_TUTORIAL:I

.field final MRC_START_TUTORIAL:I

.field final MRC_TUTOR_CLOSE:I

.field final REGIONALCORRECTION:I

.field final START_TUTORIAL:I

.field final WAIT_SPACE:I

.field final WAIT_SUGGEST_DIALOG:I

.field isTutorialing:Z

.field mAcceptInput:Z

.field private mAdjustKeyWidth:I

.field mCharPos:I

.field private mFuzzyScenerioHandler:Landroid/os/Handler;

.field protected mHandler:Landroid/os/Handler;

.field private mISZH:Z

.field mInputString:Ljava/lang/String;

.field private mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

.field private mLPAcceptInput:Z

.field private mLPTutorState:I

.field private mLongPressScenerioHandler:Landroid/os/Handler;

.field mMRCCharPos:I

.field mMRCCount:I

.field mMRCInputString:Ljava/lang/String;

.field mMRCMoved:Z

.field private mMRCScenerioHandler:Landroid/os/Handler;

.field private final mMRCStringReplace:[Ljava/lang/String;

.field private mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

.field final mRCString:Ljava/lang/String;

.field private mScaledMetric:F

.field private mStartLP:Z

.field private mTutorialScenario:I

.field mWaitingSpace:Z

.field settingStored:[Z

.field settingStoredLanguage:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1560
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "magic "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "innovation "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "creative "

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sMRCString:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/EZSIPView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    new-instance v0, Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-direct {v0}, Lcom/htc/android/htcime/Intf/HTCSIPData;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    .line 79
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->isTutorialing:Z

    .line 81
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->DEBUG:Z

    .line 82
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mScaledMetric:F

    .line 83
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mAdjustKeyWidth:I

    .line 511
    new-instance v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$1;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$1;-><init>(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHandler:Landroid/os/Handler;

    .line 556
    iput v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->LONGPRESS:I

    .line 557
    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->REGIONALCORRECTION:I

    .line 558
    iput v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->MORE_REGIONALCORRECTION:I

    .line 560
    iput v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mTutorialScenario:I

    .line 561
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mISZH:Z

    .line 606
    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->START_TUTORIAL:I

    .line 607
    iput v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->END_TUTORIAL:I

    .line 608
    iput v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->HANDEL_END_TUTORIAL:I

    .line 609
    iput v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->WAIT_SPACE:I

    .line 610
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->WAIT_SUGGEST_DIALOG:I

    .line 612
    const-string v0, "simple "

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mRCString:Ljava/lang/String;

    .line 613
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mInputString:Ljava/lang/String;

    .line 614
    iput v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCharPos:I

    .line 615
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mWaitingSpace:Z

    .line 617
    new-array v0, v5, [Z

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->settingStored:[Z

    .line 618
    iput v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->settingStoredLanguage:I

    .line 693
    new-instance v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;-><init>(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mFuzzyScenerioHandler:Landroid/os/Handler;

    .line 1086
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->LP_TUTOR_INIT:I

    .line 1087
    iput v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->LP_TUTOR_START:I

    .line 1088
    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->LP_TUTOR_END:I

    .line 1089
    iput v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->LP_TUTOR_HINT:I

    .line 1090
    iput v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->LP_TUTOR_CLOSE:I

    .line 1091
    iput v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->LP_TUTOR_SYM:I

    .line 1092
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->LP_TUTOR_SYMHINT:I

    .line 1093
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->LP_TUTOR_F:I

    .line 1094
    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->LP_TUTOR_FHINT:I

    .line 1095
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->LP_TUTOR_NEXT:I

    .line 1097
    const/16 v0, 0x9

    iput v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->LP_TUTOR_G:I

    .line 1098
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->LP_TUTOR_GHINT:I

    .line 1100
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mStartLP:Z

    .line 1101
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPAcceptInput:Z

    .line 1102
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I

    .line 1107
    new-instance v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;-><init>(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;

    .line 1555
    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->MRC_START_TUTORIAL:I

    .line 1556
    iput v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->MRC_END_TUTORIAL:I

    .line 1557
    iput v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->MRC_HANDLE_END_TUTORIAL:I

    .line 1558
    iput v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->MRC_TUTOR_CLOSE:I

    .line 1559
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->MRC_PRE_START_TUTORIAL:I

    .line 1562
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "v"

    aput-object v1, v0, v2

    const-string v1, "m"

    aput-object v1, v0, v3

    const-string v1, "r"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCStringReplace:[Ljava/lang/String;

    .line 1565
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCInputString:Ljava/lang/String;

    .line 1567
    iput v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCharPos:I

    .line 1569
    iput v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCount:I

    .line 1570
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCMoved:Z

    .line 1571
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mAcceptInput:Z

    .line 1836
    new-instance v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;-><init>(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCScenerioHandler:Landroid/os/Handler;

    .line 88
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "Full Qwerty"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipName:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput v4, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 90
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v3, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->isWCLVisible:Z

    .line 91
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v3, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->bDropBtnVisibile:Z

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I

    return v0
.end method

.method static synthetic access$002(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I

    return p1
.end method

.method static synthetic access$100(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mFuzzyScenerioHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->finishTutorial()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->playRCTutorial()V

    return-void
.end method

.method static synthetic access$3800(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4800(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mAdjustKeyWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mScaledMetric:F

    return v0
.end method

.method static synthetic access$5002(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mStartLP:Z

    return p1
.end method

.method static synthetic access$5102(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPAcceptInput:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCScenerioHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->playMRCTutorial()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->showInput(Ljava/lang/String;I)V

    return-void
.end method

.method private checkResult(C)V
    .locals 9
    .parameter "c"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x6

    const-wide/16 v5, 0x7d0

    const/4 v2, 0x0

    const-wide/16 v3, 0x3e8

    .line 1218
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPAcceptInput:Z

    .line 1219
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/16 v0, 0x40

    if-ne p1, v0, :cond_0

    .line 1220
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1265
    :goto_0
    return-void

    .line 1223
    :cond_0
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/16 v0, 0xc4

    if-ne p1, v0, :cond_2

    .line 1226
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mIsLargeTablet:Z

    if-eqz v0, :cond_1

    .line 1227
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1230
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1238
    :cond_2
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    const/16 v0, 0x11e

    if-ne p1, v0, :cond_3

    .line 1239
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v0, v0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleGHint:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 1240
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1243
    :cond_3
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    const/16 v0, 0x24

    if-ne p1, v0, :cond_4

    .line 1244
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v0, v0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleFHint:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 1245
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1249
    :cond_4
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v0, v0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleTry:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v0, v2, v2}, Lcom/htc/android/htcime/ui/Bubble;->show(II)V

    .line 1250
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 1251
    :cond_5
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1262
    :goto_1
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->finishLP()V

    goto/16 :goto_0

    .line 1253
    :cond_6
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I

    if-ne v0, v7, :cond_8

    .line 1254
    :cond_7
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 1256
    :cond_8
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_a

    .line 1257
    :cond_9
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 1260
    :cond_a
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private createLPObjects()V
    .locals 0

    .prologue
    .line 1105
    return-void
.end method

.method private createRCObjects()V
    .locals 0

    .prologue
    .line 630
    return-void
.end method

.method private dismissInput()V
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v0, v0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mTutorialTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v0, v0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mTutorialTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/TutorialTouchZone;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v0, v0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mTutorialTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/TutorialTouchZone;->dismiss()V

    .line 691
    :cond_0
    return-void
.end method

.method private finishLP()V
    .locals 1

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v0, v0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleStart:Lcom/htc/android/htcime/ui/Bubble;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v0, v0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleStart:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 1269
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v0, v0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleHint:Lcom/htc/android/htcime/ui/BubbleAni;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v0, v0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleHint:Lcom/htc/android/htcime/ui/BubbleAni;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/BubbleAni;->hide()V

    .line 1270
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v0, v0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleClose:Lcom/htc/android/htcime/ui/Bubble;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v0, v0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleClose:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 1272
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v0, v0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleFHint:Lcom/htc/android/htcime/ui/Bubble;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v0, v0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleFHint:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 1273
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v0, v0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleF:Lcom/htc/android/htcime/ui/Bubble;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v0, v0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleF:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 1278
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mStartLP:Z

    .line 1279
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I

    .line 1280
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v0, v0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mTutorialTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v0, v0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mTutorialTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/TutorialTouchZone;->dismiss()V

    .line 1281
    :cond_5
    return-void
.end method

.method private finishTutorial()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 779
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mFuzzyScenerioHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 780
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mFuzzyScenerioHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 781
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mFuzzyScenerioHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 782
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mFuzzyScenerioHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 783
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mFuzzyScenerioHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 785
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->isTutorialing:Z

    .line 786
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mWaitingSpace:Z

    .line 788
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 789
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 790
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 791
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 792
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 793
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 794
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 795
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 796
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 797
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 798
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 801
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCScenerioHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 802
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCScenerioHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 803
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCScenerioHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 804
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCScenerioHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 805
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCScenerioHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 807
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mStartLP:Z

    .line 808
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I

    .line 810
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/TutorialBubbles;->destroyBubbles()V

    .line 811
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sput-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->mTutorialing:Z

    .line 812
    invoke-virtual {p0, v3, v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->setIMECapMode(IZ)V

    .line 814
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iput-boolean v2, v0, Lcom/htc/android/htcime/HTCIMEService;->mTutorialBubbleAllocate:Z

    .line 815
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->restoreSettings()V

    .line 816
    return-void
.end method

.method private initSettings()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 819
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->settingStored:[Z

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mQWERTYPrediction:Z

    aput-boolean v1, v0, v3

    .line 820
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->settingStored:[Z

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mQWERTYSpellingCheck:Z

    aput-boolean v1, v0, v4

    .line 821
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->settingStored:[Z

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->mSoundFlag:Z

    aput-boolean v2, v0, v1

    .line 822
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->settingStored:[Z

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mVibrationFlag:Z

    aput-boolean v1, v0, v5

    .line 823
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v0, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    iput v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->settingStoredLanguage:I

    .line 824
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sput-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mQWERTYPrediction:Z

    .line 825
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sput-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->mQWERTYSpellingCheck:Z

    .line 826
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sput-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->mSoundFlag:Z

    .line 827
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sput-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mVibrationFlag:Z

    .line 829
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mVibrationFlag:Z

    if-eqz v0, :cond_1

    .line 832
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "htc.ime.isVibrateOn"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 838
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sput v3, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    .line 840
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mWaitingSpace:Z

    .line 841
    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->doAutoCapCheck(I)I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->setIMECapMode(IZ)V

    .line 842
    return-void

    .line 834
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "htc.ime.isVibrateOn"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private nextStepMRCTutorial()V
    .locals 1

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v0, v0, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleStart:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 1819
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCharPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCharPos:I

    .line 1820
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->playMRCTutorial()V

    .line 1821
    return-void
.end method

.method private nextStepRCTutorial()V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v0, v0, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleStart:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 634
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCharPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCharPos:I

    .line 635
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->playRCTutorial()V

    .line 636
    return-void
.end method

.method private onTouchEventLP(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "me"

    .prologue
    const/4 v13, 0x3

    const/4 v10, 0x4

    const/4 v12, -0x1

    const/4 v9, 0x0

    const/4 v11, 0x1

    .line 1284
    iget-boolean v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mStartLP:Z

    if-nez v5, :cond_0

    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I

    if-ltz v5, :cond_1

    :cond_0
    iget-boolean v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPAcceptInput:Z

    if-nez v5, :cond_2

    .line 1489
    :cond_1
    :goto_0
    return v11

    .line 1288
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v5

    iput v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->pressure:F

    .line 1289
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    iput v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->action:I

    .line 1290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventTime:J

    .line 1292
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    aput v6, v5, v9

    .line 1293
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    aput v6, v5, v11

    .line 1294
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    aget v5, v5, v9

    iput v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchX_org:I

    .line 1295
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    aget v5, v5, v11

    iput v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchY_org:I

    .line 1296
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->correctBias([I)V

    .line 1299
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    .line 1302
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I

    if-ne v5, v13, :cond_6

    .line 1303
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v6, -0x4

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    aget v6, v6, v9

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    aget v7, v7, v11

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->inside(II)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1305
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1306
    .local v3, res:Landroid/content/res/Resources;
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->action:I

    if-ne v5, v11, :cond_3

    .line 1307
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v5, v5, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleClose:Lcom/htc/android/htcime/ui/Bubble;

    const/4 v6, -0x4

    invoke-direct {p0, v6}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v6

    iget-object v6, v6, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    const/4 v7, -0x4

    invoke-direct {p0, v7}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v7

    iget-object v7, v7, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v8, v8, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v8}, Lcom/htc/android/htcime/HTCIMMView;->getFixedWCLHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/htcime/ui/Bubble;->show(II)V

    .line 1309
    :cond_3
    invoke-virtual {p0, v12, v11}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->showPreview(IZ)V

    .line 1310
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 1311
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1314
    .end local v3           #res:Landroid/content/res/Resources;
    :cond_4
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v5, v5, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleClose:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v5}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 1367
    :cond_5
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->action:I

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    invoke-virtual {p0, v5, v6}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->isUnderTouchThreshold(I[I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1370
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    aget v5, v5, v9

    iput v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchX:I

    .line 1371
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    aget v5, v5, v11

    iput v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchY:I

    .line 1372
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchX:I

    iget v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchY:I

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->getKeyIndicesClosest(II[I)I

    move-result v5

    iput v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->keyIndex:I

    .line 1374
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->keyIndex:I

    if-gez v5, :cond_e

    .line 1375
    const-string v5, "PortQwertySIPViewTutorial"

    const-string v6, "keyIndex error!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1316
    :cond_6
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I

    if-ne v5, v10, :cond_8

    .line 1317
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v6, -0x2

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    aget v6, v6, v9

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    aget v7, v7, v11

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->inside(II)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1318
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->action:I

    if-ne v5, v11, :cond_7

    .line 1319
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v5, v5, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleSYM:Lcom/htc/android/htcime/ui/Bubble;

    const/4 v6, -0x2

    invoke-direct {p0, v6}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v6

    iget-object v6, v6, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    const/4 v7, -0x2

    invoke-direct {p0, v7}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v7

    iget-object v7, v7, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v8, v8, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v8}, Lcom/htc/android/htcime/HTCIMMView;->getFixedWCLHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/htcime/ui/Bubble;->show(II)V

    .line 1320
    :cond_7
    invoke-virtual {p0, v12, v11}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->showPreview(IZ)V

    .line 1321
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 1322
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1326
    :cond_8
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_a

    .line 1328
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    aget v6, v6, v9

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    aget v7, v7, v11

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v8}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->getKeyIndicesClosest(II[I)I

    move-result v6

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v5, v5, v9

    const/16 v6, 0x66

    if-eq v5, v6, :cond_5

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->getAccentMode()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1329
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->action:I

    if-ne v5, v11, :cond_9

    .line 1330
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    const/16 v6, 0xa

    const/16 v7, 0xa

    invoke-interface {v5, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1331
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v5, v5, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleF:Lcom/htc/android/htcime/ui/Bubble;

    const/16 v6, 0x66

    invoke-direct {p0, v6}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v6

    iget-object v6, v6, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    const/16 v7, 0x66

    invoke-direct {p0, v7}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v7

    iget-object v7, v7, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/htcime/ui/Bubble;->show(II)V

    .line 1333
    :cond_9
    invoke-virtual {p0, v12, v11}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->showPreview(IZ)V

    .line 1334
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 1335
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1339
    :cond_a
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I

    const/16 v6, 0x9

    if-ne v5, v6, :cond_c

    .line 1341
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    aget v6, v6, v9

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    aget v7, v7, v11

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v8}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->getKeyIndicesClosest(II[I)I

    move-result v6

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v5, v5, v9

    const/16 v6, 0x67

    if-eq v5, v6, :cond_5

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->getAccentMode()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1342
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->action:I

    if-ne v5, v11, :cond_b

    .line 1343
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    const/16 v6, 0xa

    const/16 v7, 0xa

    invoke-interface {v5, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1344
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v5, v5, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleG:Lcom/htc/android/htcime/ui/Bubble;

    const/16 v6, 0x67

    invoke-direct {p0, v6}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v6

    iget-object v6, v6, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    const/16 v7, 0x67

    invoke-direct {p0, v7}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v7

    iget-object v7, v7, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/htcime/ui/Bubble;->show(II)V

    .line 1346
    :cond_b
    invoke-virtual {p0, v12, v11}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->showPreview(IZ)V

    .line 1347
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 1348
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1352
    :cond_c
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_5

    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I

    const/4 v6, 0x7

    if-eq v5, v6, :cond_5

    .line 1356
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    aget v6, v6, v9

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    aget v7, v7, v11

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v8}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->getKeyIndicesClosest(II[I)I

    move-result v6

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v5, v5, v9

    const/16 v6, 0x61

    if-eq v5, v6, :cond_5

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->getAccentMode()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1357
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->action:I

    if-ne v5, v11, :cond_d

    .line 1358
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    const/16 v6, 0xa

    const/16 v7, 0xa

    invoke-interface {v5, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1359
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v5, v5, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleStart:Lcom/htc/android/htcime/ui/Bubble;

    const/16 v6, 0x61

    invoke-direct {p0, v6}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v6

    iget-object v6, v6, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    const/16 v7, 0x61

    invoke-direct {p0, v7}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v7

    iget-object v7, v7, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v8, v8, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v8}, Lcom/htc/android/htcime/HTCIMMView;->getFixedWCLHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/htcime/ui/Bubble;->show(II)V

    .line 1361
    :cond_d
    invoke-virtual {p0, v12, v11}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->showPreview(IZ)V

    .line 1362
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 1363
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1379
    :cond_e
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I

    if-eq v5, v13, :cond_f

    .line 1380
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1381
    invoke-virtual {p0, v12, v11}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->showPreview(IZ)V

    .line 1382
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 1383
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1388
    :cond_f
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->action:I

    packed-switch v5, :pswitch_data_0

    .line 1487
    :cond_10
    :goto_1
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchX:I

    iput v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastX:I

    .line 1488
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchY:I

    iput v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastY:I

    goto/16 :goto_0

    .line 1390
    :pswitch_0
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchX:I

    iput v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mStartX:I

    .line 1391
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchY:I

    iput v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mStartY:I

    .line 1392
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchX:I

    iput v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastCodeX:I

    .line 1393
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchY:I

    iput v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastCodeY:I

    .line 1394
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastKeyTime:J

    .line 1395
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKeyTime:J

    .line 1396
    iput v12, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastKey:I

    .line 1397
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->keyIndex:I

    iput v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKey:I

    .line 1398
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mDownTime:J

    .line 1399
    iget-wide v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mDownTime:J

    iput-wide v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastMoveTime:J

    .line 1400
    iput v9, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mAutoPressCount:I

    .line 1401
    iput-boolean v9, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPress:Z

    .line 1402
    sput-boolean v9, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sLPD_isLongPress:Z

    .line 1403
    const/4 v4, 0x1

    .line 1405
    .local v4, showPreview:Z
    iput v9, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mRepeatDelCount:I

    .line 1406
    iput-boolean v9, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mDelWordMode:Z

    .line 1409
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKey:I

    if-ltz v5, :cond_11

    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKey:I

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v6, v6

    if-ge v5, v6, :cond_11

    .line 1410
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKey:I

    aget-object v1, v5, v6

    .line 1411
    .local v1, eventKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1412
    .local v2, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHandler:Landroid/os/Handler;

    iget v6, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->popupDelay_L:I

    int-to-long v6, v6

    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1414
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard;->mAccentPage:I

    if-eq v5, v12, :cond_13

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard;->mAccentPage:I

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v6, v6, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    if-eq v5, v6, :cond_13

    .line 1415
    const/4 v4, 0x1

    .line 1420
    .end local v1           #eventKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .end local v2           #msg:Landroid/os/Message;
    :cond_11
    :goto_2
    if-eqz v4, :cond_12

    .line 1421
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->keyIndex:I

    invoke-virtual {p0, v5, v9}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->showPreview(IZ)V

    .line 1423
    :cond_12
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->keyIndex:I

    iget v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchX:I

    iget v7, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchY:I

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->onKeyDown(III)V

    .line 1425
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I

    if-nez v5, :cond_14

    .line 1426
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v5, v5, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleStart:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v5}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    goto/16 :goto_1

    .line 1417
    .restart local v1       #eventKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .restart local v2       #msg:Landroid/os/Message;
    :cond_13
    iget v5, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->popupDelay_L:I

    if-nez v5, :cond_11

    .line 1418
    const/4 v4, 0x0

    goto :goto_2

    .line 1428
    .end local v1           #eventKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .end local v2           #msg:Landroid/os/Message;
    :cond_14
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I

    if-ne v5, v10, :cond_15

    .line 1429
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v5, v5, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleSYM:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v5}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    goto/16 :goto_1

    .line 1431
    :cond_15
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_16

    .line 1432
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v5, v5, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleF:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v5}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    goto/16 :goto_1

    .line 1434
    :cond_16
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I

    const/16 v6, 0x9

    if-ne v5, v6, :cond_10

    .line 1435
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v5, v5, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleG:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v5}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    goto/16 :goto_1

    .line 1440
    .end local v4           #showPreview:Z
    :pswitch_1
    const/4 v0, 0x0

    .line 1441
    .local v0, continueLongPress:Z
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->getAccentMode()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1442
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-boolean v5, v5, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mIsFingerMoved:Z

    if-nez v5, :cond_17

    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchX:I

    iget v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mStartX:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/16 v6, 0x1e

    if-lt v5, v6, :cond_10

    .line 1444
    :cond_17
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_18

    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_10

    .line 1445
    :cond_18
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iput-boolean v11, v5, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mIsFingerMoved:Z

    .line 1446
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v5, v5, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleHint:Lcom/htc/android/htcime/ui/BubbleAni;

    invoke-virtual {v5}, Lcom/htc/android/htcime/ui/BubbleAni;->hide()V

    .line 1448
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    iget v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchX:I

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->sendEventToAccent(I)V

    goto/16 :goto_1

    .line 1454
    .end local v0           #continueLongPress:Z
    :pswitch_2
    iput-boolean v9, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mStartLP:Z

    .line 1455
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->getAccentMode()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1456
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    invoke-virtual {v5}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->hideAccentLetters()Z

    .line 1457
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKey:I

    iput v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->keyIndex:I

    .line 1459
    :cond_19
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1460
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 1461
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1463
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->keyIndex:I

    iget v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKey:I

    if-ne v5, v6, :cond_1c

    .line 1464
    iget-wide v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKeyTime:J

    iget-wide v7, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventTime:J

    iget-wide v9, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastMoveTime:J

    sub-long/2addr v7, v9

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKeyTime:J

    .line 1472
    :goto_3
    iget-wide v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKeyTime:J

    iget-wide v7, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastKeyTime:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_1a

    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastKey:I

    if-eq v5, v12, :cond_1a

    .line 1473
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastKey:I

    iput v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKey:I

    .line 1474
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastCodeX:I

    iput v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchX:I

    .line 1475
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastCodeY:I

    iput v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchY:I

    .line 1477
    :cond_1a
    invoke-virtual {p0, v12, v11}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->showPreview(IZ)V

    .line 1478
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyIndices:[I

    invoke-static {v5, v12}, Ljava/util/Arrays;->fill([II)V

    .line 1481
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mRepeatKeyIndex:I

    if-ne v5, v12, :cond_1b

    .line 1482
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKey:I

    iget v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchX:I

    iget v7, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchY:I

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->onKeyUpLP(III)V

    .line 1484
    :cond_1b
    iput v12, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mRepeatKeyIndex:I

    goto/16 :goto_1

    .line 1466
    :cond_1c
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKey:I

    iput v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastKey:I

    .line 1467
    iget-wide v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKeyTime:J

    iget-wide v7, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventTime:J

    add-long/2addr v5, v7

    iget-wide v7, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastMoveTime:J

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastKeyTime:J

    .line 1468
    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->keyIndex:I

    iput v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKey:I

    .line 1469
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKeyTime:J

    goto :goto_3

    .line 1388
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private onTouchEventMRC(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "me"

    .prologue
    const/4 v12, -0x4

    const-wide/16 v7, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1574
    iget-boolean v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->isTutorialing:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mAcceptInput:Z

    if-nez v3, :cond_1

    .line 1719
    :cond_0
    :goto_0
    return v10

    .line 1577
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v3

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->pressure:F

    .line 1578
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->action:I

    .line 1579
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventTime:J

    .line 1581
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    aput v4, v3, v9

    .line 1582
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    aput v4, v3, v10

    .line 1583
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    aget v3, v3, v9

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchX_org:I

    .line 1584
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    aget v3, v3, v10

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchY_org:I

    .line 1585
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->correctBias([I)V

    .line 1587
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->action:I

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    invoke-virtual {p0, v3, v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->isUnderTouchThreshold(I[I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1590
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    aget v3, v3, v9

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchX:I

    .line 1591
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    aget v3, v3, v10

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchY:I

    .line 1592
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchX:I

    iget v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchY:I

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->getKeyIndicesClosest(II[I)I

    move-result v3

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->keyIndex:I

    .line 1594
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->keyIndex:I

    if-gez v3, :cond_2

    .line 1595
    const-string v3, "PortQwertySIPViewTutorial"

    const-string v4, "keyIndex error!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1599
    :cond_2
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1600
    invoke-virtual {p0, v11, v10}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->showPreview(IZ)V

    .line 1601
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1602
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1607
    :cond_3
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCount:I

    sget-object v4, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sMRCString:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_4

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCInputString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sget-object v4, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sMRCString:[Ljava/lang/String;

    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCount:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->keyIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->isWordComponent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1611
    sget-object v3, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sMRCString:[Ljava/lang/String;

    iget v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCount:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 1612
    .local v0, l:I
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCInputString:Ljava/lang/String;

    sget-object v4, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sMRCString:[Ljava/lang/String;

    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCount:I

    aget-object v4, v4, v5

    add-int/lit8 v5, v0, -0x2

    invoke-virtual {v4, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sMRCString:[Ljava/lang/String;

    iget v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCount:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    add-int/lit8 v4, v0, -0x2

    aget-char v4, v3, v4

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->keyIndex:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v3, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v4, v3, :cond_4

    .line 1614
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCStringReplace:[Ljava/lang/String;

    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCount:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    aget-char v4, v4, v9

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    .line 1615
    .local v2, v:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    iget v4, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    iget v5, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    add-int/2addr v4, v5

    iget v5, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    aput v4, v3, v9

    iput v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchX:I

    .line 1616
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    iget v4, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    iget v5, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    add-int/2addr v4, v5

    iget v5, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    aput v4, v3, v10

    iput v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchY:I

    .line 1617
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchX:I

    iget v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchY:I

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->getKeyIndicesClosest(II[I)I

    move-result v3

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->keyIndex:I

    .line 1621
    .end local v0           #l:I
    .end local v2           #v:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :cond_4
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->action:I

    packed-switch v3, :pswitch_data_0

    .line 1717
    :cond_5
    :goto_1
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchX:I

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastX:I

    .line 1718
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchY:I

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastY:I

    goto/16 :goto_0

    .line 1623
    :pswitch_0
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchX:I

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mStartX:I

    .line 1624
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchY:I

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mStartY:I

    .line 1625
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchX:I

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastCodeX:I

    .line 1626
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchY:I

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastCodeY:I

    .line 1627
    iput-wide v7, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastKeyTime:J

    .line 1628
    iput-wide v7, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKeyTime:J

    .line 1629
    iput v11, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastKey:I

    .line 1630
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->keyIndex:I

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKey:I

    .line 1631
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mDownTime:J

    .line 1632
    iget-wide v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mDownTime:J

    iput-wide v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastMoveTime:J

    .line 1633
    iput v9, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mAutoPressCount:I

    .line 1634
    iput-boolean v9, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPress:Z

    .line 1635
    sput-boolean v9, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sLPD_isLongPress:Z

    .line 1636
    const/4 v1, 0x1

    .line 1637
    .local v1, showPreview:Z
    iput-boolean v9, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCMoved:Z

    .line 1639
    iput v9, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mRepeatDelCount:I

    .line 1640
    iput-boolean v9, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mDelWordMode:Z

    .line 1642
    iget-boolean v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->isTutorialing:Z

    if-eqz v3, :cond_6

    .line 1643
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->keyIndex:I

    if-ltz v3, :cond_6

    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->keyIndex:I

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v4}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 1644
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCount:I

    sget-object v4, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sMRCString:[Ljava/lang/String;

    array-length v4, v4

    if-ne v3, v4, :cond_8

    .line 1645
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->keyIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v9

    if-ne v3, v12, :cond_0

    .line 1674
    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    .line 1675
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->keyIndex:I

    invoke-virtual {p0, v3, v9}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->showPreview(IZ)V

    .line 1676
    :cond_7
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->keyIndex:I

    iget v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchX:I

    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchY:I

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->onKeyDownMRC(III)V

    .line 1677
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCount:I

    sget-object v4, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sMRCString:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_5

    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->nextStepMRCTutorial()V

    goto/16 :goto_1

    .line 1652
    :cond_8
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCharPos:I

    sget-object v4, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sMRCString:[Ljava/lang/String;

    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCount:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1655
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCharPos:I

    sget-object v4, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sMRCString:[Ljava/lang/String;

    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCount:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_9

    .line 1656
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->keyIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v9

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    goto :goto_2

    .line 1665
    :cond_9
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCharPos:I

    sget-object v4, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sMRCString:[Ljava/lang/String;

    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCount:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_6

    sget-object v3, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sMRCString:[Ljava/lang/String;

    iget v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCount:I

    aget-object v3, v3, v4

    iget v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCharPos:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    aget v4, v4, v9

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    aget v5, v5, v10

    invoke-virtual {v3, v4, v5}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->distFrom(II)I

    move-result v3

    int-to-double v3, v3

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a005f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-double v5, v5

    const-wide/high16 v7, 0x4000

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-gtz v3, :cond_0

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->keyIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->isWordComponent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_0

    .line 1681
    .end local v1           #showPreview:Z
    :pswitch_1
    iput-boolean v10, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCMoved:Z

    goto/16 :goto_1

    .line 1686
    :pswitch_2
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1687
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1688
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1690
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->keyIndex:I

    iget v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKey:I

    if-ne v3, v4, :cond_c

    .line 1691
    iget-wide v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKeyTime:J

    iget-wide v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventTime:J

    iget-wide v7, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastMoveTime:J

    sub-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKeyTime:J

    .line 1699
    :goto_3
    iget-wide v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKeyTime:J

    iget-wide v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastKeyTime:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_a

    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastKey:I

    if-eq v3, v11, :cond_a

    .line 1700
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastKey:I

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKey:I

    .line 1701
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastCodeX:I

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchX:I

    .line 1702
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastCodeY:I

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchY:I

    .line 1704
    :cond_a
    invoke-virtual {p0, v11, v10}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->showPreview(IZ)V

    .line 1705
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyIndices:[I

    invoke-static {v3, v11}, Ljava/util/Arrays;->fill([II)V

    .line 1707
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mRepeatKeyIndex:I

    if-ne v3, v11, :cond_b

    .line 1708
    iget-boolean v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->isTutorialing:Z

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->keyIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v9

    if-ne v3, v12, :cond_b

    iget-boolean v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCMoved:Z

    if-nez v3, :cond_b

    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCount:I

    sget-object v4, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sMRCString:[Ljava/lang/String;

    array-length v4, v4

    if-ne v3, v4, :cond_b

    .line 1711
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKey:I

    iget v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchX:I

    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchY:I

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->onKeyUpMRC(III)V

    .line 1714
    :cond_b
    iput v11, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mRepeatKeyIndex:I

    goto/16 :goto_1

    .line 1693
    :cond_c
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKey:I

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastKey:I

    .line 1694
    iget-wide v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKeyTime:J

    iget-wide v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventTime:J

    add-long/2addr v3, v5

    iget-wide v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastMoveTime:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastKeyTime:J

    .line 1695
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->keyIndex:I

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKey:I

    .line 1696
    iput-wide v7, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKeyTime:J

    goto :goto_3

    .line 1621
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private onTouchEventRC(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "me"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 864
    iget-boolean v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->isTutorialing:Z

    if-nez v3, :cond_1

    .line 1015
    :cond_0
    :goto_0
    return v10

    .line 867
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v3

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->pressure:F

    .line 868
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->action:I

    .line 869
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventTime:J

    .line 871
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    aput v4, v3, v9

    .line 872
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    aput v4, v3, v10

    .line 873
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    aget v3, v3, v9

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchX_org:I

    .line 874
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    aget v3, v3, v10

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchY_org:I

    .line 875
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->correctBias([I)V

    .line 877
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->action:I

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    invoke-virtual {p0, v3, v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->isUnderTouchThreshold(I[I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 889
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCharPos:I

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    aget v4, v4, v9

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    aget v5, v5, v10

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->getKeyIndicesClosest(II[I)I

    move-result v4

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v9

    const/16 v4, 0x64

    if-ne v3, v4, :cond_2

    .line 891
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v4, 0x73

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    .line 892
    .local v2, v:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    iget v4, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    iget v5, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    add-int/2addr v4, v5

    iget v5, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    aput v4, v3, v9

    .line 893
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    iget v4, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    iget v5, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    add-int/2addr v4, v5

    iget v5, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    aput v4, v3, v10

    .line 897
    .end local v2           #v:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :cond_2
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mInputString:Ljava/lang/String;

    const-string v4, "simple "

    const/4 v5, 0x5

    invoke-virtual {v4, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    aget v4, v4, v9

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    aget v5, v5, v10

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->getKeyIndicesClosest(II[I)I

    move-result v4

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v9

    const/16 v4, 0x65

    if-ne v3, v4, :cond_3

    .line 899
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v4, 0x72

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    .line 900
    .restart local v2       #v:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    iget v4, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    iget v5, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    add-int/2addr v4, v5

    iget v5, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    aput v4, v3, v9

    .line 901
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    iget v4, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    iget v5, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    add-int/2addr v4, v5

    iget v5, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    aput v4, v3, v10

    .line 904
    .end local v2           #v:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :cond_3
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    aget v3, v3, v9

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchX:I

    .line 905
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    aget v3, v3, v10

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchY:I

    .line 906
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchX:I

    iget v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchY:I

    invoke-virtual {p0, v3, v4, v6}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->getKeyIndicesClosest(II[I)I

    move-result v3

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->keyIndex:I

    .line 908
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->keyIndex:I

    if-gez v3, :cond_4

    .line 909
    const-string v3, "PortQwertySIPViewTutorial"

    const-string v4, "keyIndex error!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 913
    :cond_4
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 914
    invoke-virtual {p0, v11, v10}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->showPreview(IZ)V

    .line 915
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 916
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 920
    :cond_5
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->action:I

    packed-switch v3, :pswitch_data_0

    .line 1013
    :goto_1
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchX:I

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastX:I

    .line 1014
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchY:I

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastY:I

    goto/16 :goto_0

    .line 922
    :pswitch_0
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchX:I

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mStartX:I

    .line 923
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchY:I

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mStartY:I

    .line 924
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchX:I

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastCodeX:I

    .line 925
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchY:I

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastCodeY:I

    .line 926
    iput-wide v7, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastKeyTime:J

    .line 927
    iput-wide v7, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKeyTime:J

    .line 928
    iput v11, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastKey:I

    .line 929
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->keyIndex:I

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKey:I

    .line 930
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mDownTime:J

    .line 931
    iget-wide v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mDownTime:J

    iput-wide v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastMoveTime:J

    .line 932
    iput v9, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mAutoPressCount:I

    .line 933
    iput-boolean v9, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPress:Z

    .line 934
    sput-boolean v9, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sLPD_isLongPress:Z

    .line 935
    const/4 v1, 0x1

    .line 937
    .local v1, showPreview:Z
    iput v9, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mRepeatDelCount:I

    .line 938
    iput-boolean v9, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mDelWordMode:Z

    .line 940
    iget-boolean v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->isTutorialing:Z

    if-eqz v3, :cond_6

    .line 942
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->keyIndex:I

    if-ltz v3, :cond_6

    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->keyIndex:I

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v4}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 945
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCharPos:I

    const-string v4, "simple "

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 952
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCharPos:I

    const-string v4, "simple "

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_8

    .line 953
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->keyIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v9

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mWaitingSpace:Z

    if-nez v3, :cond_0

    .line 970
    :cond_6
    if-eqz v1, :cond_7

    .line 971
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->keyIndex:I

    invoke-virtual {p0, v3, v9}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->showPreview(IZ)V

    .line 972
    :cond_7
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->keyIndex:I

    iget v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchX:I

    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchY:I

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->onKeyDown(III)V

    .line 973
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->nextStepRCTutorial()V

    goto/16 :goto_1

    .line 962
    :cond_8
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCharPos:I

    const-string v4, "simple "

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_6

    const-string v3, "simple "

    iget v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCharPos:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    aget v4, v4, v9

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventXY:[I

    aget v5, v5, v10

    invoke-virtual {v3, v4, v5}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->distFrom(II)I

    move-result v3

    int-to-double v3, v3

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a005f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-double v5, v5

    const-wide/high16 v7, 0x4000

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-gtz v3, :cond_0

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->keyIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->isWordComponent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_0

    .line 977
    .end local v1           #showPreview:Z
    :pswitch_1
    const/4 v0, 0x0

    .line 978
    .local v0, continueLongPress:Z
    goto/16 :goto_1

    .line 982
    .end local v0           #continueLongPress:Z
    :pswitch_2
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 983
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 984
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 986
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->keyIndex:I

    iget v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKey:I

    if-ne v3, v4, :cond_a

    .line 987
    iget-wide v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKeyTime:J

    iget-wide v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventTime:J

    iget-wide v7, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastMoveTime:J

    sub-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKeyTime:J

    .line 995
    :goto_2
    iget-wide v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKeyTime:J

    iget-wide v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastKeyTime:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_9

    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastKey:I

    if-eq v3, v11, :cond_9

    .line 996
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastKey:I

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKey:I

    .line 997
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastCodeX:I

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchX:I

    .line 998
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastCodeY:I

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->touchY:I

    .line 1000
    :cond_9
    invoke-virtual {p0, v11, v10}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->showPreview(IZ)V

    .line 1001
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyIndices:[I

    invoke-static {v3, v11}, Ljava/util/Arrays;->fill([II)V

    .line 1002
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mRepeatKeyIndex:I

    if-ne v3, v11, :cond_b

    .line 1010
    :goto_3
    iput v11, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mRepeatKeyIndex:I

    goto/16 :goto_1

    .line 989
    :cond_a
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKey:I

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastKey:I

    .line 990
    iget-wide v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKeyTime:J

    iget-wide v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->eventTime:J

    add-long/2addr v3, v5

    iget-wide v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastMoveTime:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastKeyTime:J

    .line 991
    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->keyIndex:I

    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKey:I

    .line 992
    iput-wide v7, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKeyTime:J

    goto :goto_2

    .line 1008
    :cond_b
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mSIP_ID:I

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    iget v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mRepeatKeyIndex:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v9

    or-int/2addr v3, v5

    invoke-virtual {v4, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyUpEvent(I)V

    goto :goto_3

    .line 920
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private playMRCTutorial()V
    .locals 4

    .prologue
    .line 1825
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCharPos:I

    sget-object v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sMRCString:[Ljava/lang/String;

    iget v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCount:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1826
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->dismissInput()V

    .line 1828
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCScenerioHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCScenerioHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1834
    :cond_0
    :goto_0
    return-void

    .line 1831
    :cond_1
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCharPos:I

    sget-object v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sMRCString:[Ljava/lang/String;

    iget v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCount:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1832
    sget-object v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sMRCString:[Ljava/lang/String;

    iget v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCount:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCharPos:I

    invoke-direct {p0, v0, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->showInput(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private playRCTutorial()V
    .locals 4

    .prologue
    .line 640
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCharPos:I

    const-string v1, "simple "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 641
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->dismissInput()V

    .line 646
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v0, v0, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleSpace:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 647
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mFuzzyScenerioHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mFuzzyScenerioHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCharPos:I

    const-string v1, "simple "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    .line 651
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v0, v0, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleTyped:Lcom/htc/android/htcime/ui/Bubble;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mScaledMetric:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMMView;->getFixedWCLHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/ui/Bubble;->show(II)V

    .line 652
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mWaitingSpace:Z

    .line 653
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->dismissInput()V

    .line 659
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mFuzzyScenerioHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mFuzzyScenerioHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 663
    :cond_2
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCharPos:I

    const-string v1, "simple "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 664
    const-string v0, "simple "

    iget v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCharPos:I

    invoke-direct {p0, v0, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->showInput(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private postPrediction(I)V
    .locals 0
    .parameter "keycode"

    .prologue
    .line 309
    return-void
.end method

.method private quickPressCheck(Lcom/htc/android/htcime/ezsip/Keyboard$Key;III)Z
    .locals 1
    .parameter "mKey"
    .parameter "pos_x"
    .parameter "pos_y"
    .parameter "threshold"

    .prologue
    .line 313
    const/4 v0, 0x0

    return v0
.end method

.method private restoreSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 845
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->settingStored:[Z

    aget-boolean v0, v0, v2

    sput-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mQWERTYPrediction:Z

    .line 846
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->settingStored:[Z

    aget-boolean v0, v0, v3

    sput-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mQWERTYSpellingCheck:Z

    .line 847
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->settingStored:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mSoundFlag:Z

    .line 848
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->settingStored:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mVibrationFlag:Z

    .line 849
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->settingStoredLanguage:I

    sput v0, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    .line 851
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mVibrationFlag:Z

    if-eqz v0, :cond_1

    .line 854
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "htc.ime.isVibrateOn"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 860
    :cond_0
    :goto_0
    return-void

    .line 856
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "htc.ime.isVibrateOn"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private setKeyboardbyLang(I)V
    .locals 3
    .parameter "lang"

    .prologue
    .line 118
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mEnlargeLowercase:Z

    .line 119
    const v0, 0x7f05004a

    .line 142
    .local v0, targetXmlId:I
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mXmlID:I

    if-eq v0, v1, :cond_1

    .line 143
    :cond_0
    new-instance v1, Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/htc/android/htcime/ezsip/Keyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 145
    :cond_1
    return-void
.end method

.method private showInput(Ljava/lang/String;I)V
    .locals 6
    .parameter "s"
    .parameter "p"

    .prologue
    const/4 v4, 0x0

    .line 669
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->dismissInput()V

    .line 671
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt p2, v1, :cond_0

    .line 672
    const-string v1, "PortQwertySIPViewTutorial"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Position > length, ignore it!, s - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " p - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :goto_0
    return-void

    .line 676
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    .line 677
    .local v0, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p2, v1, :cond_1

    .line 679
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TutorialBubbles;->mTutorialTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    iget v5, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/android/htcime/ui/TutorialTouchZone;->setCenterLocation(FFII)V

    .line 685
    :goto_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TutorialBubbles;->mTutorialTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/TutorialTouchZone;->show()V

    goto :goto_0

    .line 682
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TutorialBubbles;->mTutorialTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/htc/android/htcime/ui/TutorialTouchZone;->setCenterLocation(FFII)V

    goto :goto_1
.end method

.method private startTutorial()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 565
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    const/16 v1, 0x16

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    const/16 v1, 0x19

    if-eq v0, v1, :cond_1

    .line 569
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sput-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->mTutorialing:Z

    .line 575
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    if-nez v0, :cond_2

    .line 576
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    new-instance v1, Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-direct {v1, v2}, Lcom/htc/android/htcime/ui/TutorialBubbles;-><init>(Lcom/htc/android/htcime/HTCIMEService;)V

    iput-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    .line 578
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mISZH:Z

    const-string v3, "simple "

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/htc/android/htcime/ui/TutorialBubbles;->allocatBubbles(Landroid/content/Context;ZLandroid/view/View;Ljava/lang/String;)V

    .line 580
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->createRCObjects()V

    .line 581
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->createLPObjects()V

    .line 582
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iput-boolean v5, v0, Lcom/htc/android/htcime/HTCIMEService;->mTutorialBubbleAllocate:Z

    .line 583
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mTutorialScenario:I

    if-ne v0, v5, :cond_3

    .line 584
    iput v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCharPos:I

    .line 585
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mInputString:Ljava/lang/String;

    .line 586
    sput v4, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->activeString:I

    .line 587
    sput-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->sSkipXT9Tutorial:Z

    .line 588
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mFuzzyScenerioHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mFuzzyScenerioHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 591
    :cond_3
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mTutorialScenario:I

    if-nez v0, :cond_4

    .line 592
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 595
    :cond_4
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mTutorialScenario:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 596
    iput v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCount:I

    .line 597
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->activeString:I

    .line 598
    sput-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->sSkipXT9Tutorial:Z

    .line 599
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCScenerioHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCScenerioHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .locals 3
    .parameter "c"

    .prologue
    .line 622
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 623
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-ne v1, p1, :cond_0

    .line 624
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 626
    :goto_1
    return-object v1

    .line 622
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 626
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public InitialT9Setting()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 470
    const/4 v0, 0x0

    .line 473
    .local v0, real_cmd:I
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_EnlargeKey:Z

    if-eqz v4, :cond_0

    .line 474
    const/4 v1, 0x0

    .line 477
    .local v1, tmp:I
    :goto_0
    or-int/2addr v0, v1

    .line 480
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mAutoSubstitute:Z

    if-ne v4, v2, :cond_2

    move v1, v2

    .line 481
    :goto_1
    shl-int/lit8 v1, v1, 0x3

    .line 482
    or-int/2addr v0, v1

    .line 485
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_EnlargeKey:Z

    if-eqz v4, :cond_3

    .line 486
    const/4 v1, 0x1

    .line 489
    :goto_2
    shl-int/lit8 v1, v1, 0x4

    .line 490
    or-int/2addr v0, v1

    .line 493
    const/high16 v2, 0x717

    or-int/2addr v0, v2

    .line 494
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2, v0}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 495
    return-void

    .line 476
    .end local v1           #tmp:I
    :cond_0
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mQWERTYSpellingCheck:Z

    if-ne v4, v2, :cond_1

    move v1, v2

    .restart local v1       #tmp:I
    :goto_3
    goto :goto_0

    .end local v1           #tmp:I
    :cond_1
    move v1, v3

    goto :goto_3

    .restart local v1       #tmp:I
    :cond_2
    move v1, v3

    .line 480
    goto :goto_1

    .line 488
    :cond_3
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mQWERTYWordComplete:Z

    if-ne v4, v2, :cond_4

    move v1, v2

    :goto_4
    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_4
.end method

.method public finishInput()V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->finishTutorial()V

    .line 260
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->closing()V

    .line 262
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/EZSIPView;->finishInput()V

    .line 263
    return-void
.end method

.method public getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    return-object v0
.end method

.method protected handleAccent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;II)Z
    .locals 5
    .parameter "mKey"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/high16 v4, 0x2300

    const/4 v1, 0x0

    .line 1528
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->getAccentMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1530
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->getAccentString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1531
    .local v0, accentString:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->getWordIndex()I

    move-result v2

    sput v2, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mAccentWordIndex:I

    .line 1533
    iget-object v2, p1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v1

    const/4 v3, -0x7

    if-ne v2, v3, :cond_2

    .line 1544
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->setAccentMode(Z)V

    .line 1545
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->checkResult(C)V

    .line 1546
    const/4 v1, 0x1

    .line 1549
    .end local v0           #accentString:Ljava/lang/CharSequence;
    :cond_1
    return v1

    .line 1534
    .restart local v0       #accentString:Ljava/lang/CharSequence;
    :cond_2
    iget-object v2, p1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v1

    const/4 v3, -0x2

    if-ne v2, v3, :cond_3

    .line 1535
    sget v2, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mAccentWordIndex:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 1537
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    or-int/2addr v2, v4

    invoke-virtual {p0, v2, p2, p3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sendKeyEvent(III)V

    goto :goto_0

    .line 1541
    :cond_3
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    or-int/2addr v2, v4

    const/high16 v3, 0x80

    or-int/2addr v2, v3

    invoke-virtual {p0, v2, p2, p3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sendKeyEvent(III)V

    goto :goto_0
.end method

.method public handleBack()Z
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 2
    .parameter "htcIMM"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 101
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 102
    sget v0, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    invoke-direct {p0, v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->setKeyboardbyLang(I)V

    .line 103
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipName:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalHeight:I

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    .line 105
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->setPopupOffset(II)V

    .line 106
    const/high16 v0, 0x300

    iput v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mSIP_ID:I

    .line 107
    const/high16 v0, 0x600

    iput v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mSIP_LP_ID:I

    .line 109
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mScaledMetric:F

    .line 110
    return-void
.end method

.method protected isWordComponent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 1952
    iget-object v0, p1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    return v0
.end method

.method public notify(IILjava/lang/String;)V
    .locals 0
    .parameter "action"
    .parameter "iParam"
    .parameter "sParam"

    .prologue
    .line 1946
    return-void
.end method

.method public onCursorChanged()V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method protected onKeyDown(III)V
    .locals 3
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/4 v2, 0x0

    .line 321
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->resetState()V

    .line 322
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 327
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCharPos:I

    const-string v1, "simple "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mInputString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mInputString:Ljava/lang/String;

    .line 330
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->feedbackEffect(I)V

    .line 332
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    const/16 v1, 0x190

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->quickPressCheck(Lcom/htc/android/htcime/ezsip/Keyboard$Key;III)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 333
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iput p1, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastDownBtnIndex:I

    .line 334
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iput-boolean v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mDoFuncKey:Z

    goto :goto_0

    .line 339
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->isWordComponent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 340
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v0}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v0

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    const/16 v1, 0x40

    if-ge v0, v1, :cond_4

    .line 342
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tmpPos:Lcom/htc/android/htcime/ezsip/EZSIPView$Position;

    invoke-virtual {v1, p2, p3}, Lcom/htc/android/htcime/ezsip/EZSIPView$Position;->set(II)Lcom/htc/android/htcime/ezsip/EZSIPView$Position;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->positionAdjust(Lcom/htc/android/htcime/ezsip/Keyboard$Key;Lcom/htc/android/htcime/ezsip/EZSIPView$Position;)V

    .line 343
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tmpPos:Lcom/htc/android/htcime/ezsip/EZSIPView$Position;

    iget p2, v0, Lcom/htc/android/htcime/ezsip/EZSIPView$Position;->x:I

    .line 344
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tmpPos:Lcom/htc/android/htcime/ezsip/EZSIPView$Position;

    iget p3, v0, Lcom/htc/android/htcime/ezsip/EZSIPView$Position;->y:I

    .line 345
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mSIP_ID:I

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v2

    or-int/2addr v0, v1

    invoke-virtual {p0, v0, p2, p3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sendKeyEvent(III)V

    .line 347
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v0, v0, v2

    invoke-direct {p0, v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->postPrediction(I)V

    .line 351
    :cond_4
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iput-boolean v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mShiftCehck:Z

    .line 352
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-wide v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mDownTime:J

    iput-wide v1, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastQPTime:J

    .line 360
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iput p1, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastDownBtnIndex:I

    goto/16 :goto_0

    .line 355
    :cond_6
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v0, v0, v2

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 356
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mSIP_ID:I

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v2

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sendKeyEvent(I)V

    goto :goto_1
.end method

.method protected onKeyDownMRC(III)V
    .locals 4
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/4 v3, 0x0

    .line 1725
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->resetState()V

    .line 1726
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1757
    :cond_0
    :goto_0
    return-void

    .line 1730
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 1731
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCount:I

    sget-object v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sMRCString:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCharPos:I

    sget-object v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sMRCString:[Ljava/lang/String;

    iget v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCount:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 1732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCInputString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCInputString:Ljava/lang/String;

    .line 1734
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->feedbackEffect(I)V

    .line 1736
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->isWordComponent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1737
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v0}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v0

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    const/16 v1, 0x40

    if-ge v0, v1, :cond_3

    .line 1739
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tmpPos:Lcom/htc/android/htcime/ezsip/EZSIPView$Position;

    invoke-virtual {v1, p2, p3}, Lcom/htc/android/htcime/ezsip/EZSIPView$Position;->set(II)Lcom/htc/android/htcime/ezsip/EZSIPView$Position;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->positionAdjust(Lcom/htc/android/htcime/ezsip/Keyboard$Key;Lcom/htc/android/htcime/ezsip/EZSIPView$Position;)V

    .line 1740
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tmpPos:Lcom/htc/android/htcime/ezsip/EZSIPView$Position;

    iget p2, v0, Lcom/htc/android/htcime/ezsip/EZSIPView$Position;->x:I

    .line 1741
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tmpPos:Lcom/htc/android/htcime/ezsip/EZSIPView$Position;

    iget p3, v0, Lcom/htc/android/htcime/ezsip/EZSIPView$Position;->y:I

    .line 1743
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mSIP_ID:I

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    or-int/2addr v0, v1

    invoke-virtual {p0, v0, p2, p3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sendKeyEvent(III)V

    .line 1744
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v0, v0, v3

    invoke-direct {p0, v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->postPrediction(I)V

    .line 1747
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iput-boolean v3, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mShiftCehck:Z

    .line 1748
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-wide v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mDownTime:J

    iput-wide v1, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastQPTime:J

    .line 1756
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iput p1, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastDownBtnIndex:I

    goto/16 :goto_0

    .line 1751
    :cond_5
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v0, v0, v3

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4

    .line 1752
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mSIP_ID:I

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sendKeyEvent(I)V

    goto :goto_1
.end method

.method protected onKeyMove(III)V
    .locals 4
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 423
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mShiftState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastDownBtnIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->isWordComponent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 427
    invoke-virtual {p0, v3, v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->setIMECapMode(IZ)V

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 431
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->feedbackEffect(I)V

    .line 433
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->isWordComponent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 434
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v0}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v0

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    const/16 v1, 0x40

    if-ge v0, v1, :cond_3

    .line 436
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tmpPos:Lcom/htc/android/htcime/ezsip/EZSIPView$Position;

    invoke-virtual {v1, p2, p3}, Lcom/htc/android/htcime/ezsip/EZSIPView$Position;->set(II)Lcom/htc/android/htcime/ezsip/EZSIPView$Position;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->positionAdjust(Lcom/htc/android/htcime/ezsip/Keyboard$Key;Lcom/htc/android/htcime/ezsip/EZSIPView$Position;)V

    .line 437
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tmpPos:Lcom/htc/android/htcime/ezsip/EZSIPView$Position;

    iget p2, v0, Lcom/htc/android/htcime/ezsip/EZSIPView$Position;->x:I

    .line 438
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tmpPos:Lcom/htc/android/htcime/ezsip/EZSIPView$Position;

    iget p3, v0, Lcom/htc/android/htcime/ezsip/EZSIPView$Position;->y:I

    .line 440
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mSIP_ID:I

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v2

    or-int/2addr v0, v1

    invoke-virtual {p0, v0, p2, p3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sendKeyEvent(III)V

    .line 441
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v0, v0, v2

    invoke-direct {p0, v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->postPrediction(I)V

    .line 443
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iput p1, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastDownBtnIndex:I

    .line 445
    :cond_4
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iput-boolean v3, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mMultitouchHappened:Z

    .line 446
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iput-boolean v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mFirstMove:Z

    goto :goto_0
.end method

.method protected onKeyUpLP(III)V
    .locals 4
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x2

    .line 1493
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1525
    :cond_0
    :goto_0
    return-void

    .line 1497
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 1500
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v0, p2, p3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->handleAccent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1503
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->isWordComponent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1505
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v0, v0, v1

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->checkResult(C)V

    goto :goto_0

    .line 1508
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1512
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1514
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->dismissInput()V

    .line 1515
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    goto :goto_0

    .line 1518
    :pswitch_2
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1519
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v0, v0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleSYM:Lcom/htc/android/htcime/ui/Bubble;

    invoke-direct {p0, v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-direct {p0, v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMMView;->getFixedWCLHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/ui/Bubble;->show(II)V

    goto :goto_0

    .line 1508
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onKeyUpMRC(III)V
    .locals 3
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/4 v2, 0x0

    .line 1763
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1815
    :cond_0
    :goto_0
    return-void

    .line 1767
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 1770
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v0, p2, p3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->handleAccent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1774
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-boolean v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mMultitouchHappened:Z

    if-nez v0, :cond_0

    .line 1778
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->isWordComponent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1781
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-boolean v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mIsFingerMoved:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastDownBtnIndex:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastDownBtnIndex:I

    if-eq v0, p1, :cond_2

    .line 1784
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastDownBtnIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->isWordComponent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1785
    const/high16 v0, 0x3300

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v2

    or-int/2addr v0, v1

    invoke-virtual {p0, v0, p2, p3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sendKeyEvent(III)V

    .line 1789
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-boolean v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mShiftCehck:Z

    if-nez v0, :cond_0

    .line 1790
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mShiftCehck:Z

    .line 1791
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->shiftStateCheck()V

    goto :goto_0

    .line 1795
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1800
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->dismissInput()V

    .line 1801
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v0, v0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleClose:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 1802
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    .line 1805
    iput v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCount:I

    .line 1806
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->finishTutorial()V

    .line 1807
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    goto/16 :goto_0

    .line 1795
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onKeyUpRC(III)V
    .locals 4
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/4 v2, 0x0

    .line 368
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 375
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v0, p2, p3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->handleAccent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-boolean v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mMultitouchHappened:Z

    if-nez v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->isWordComponent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 386
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-boolean v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mIsFingerMoved:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastDownBtnIndex:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastDownBtnIndex:I

    if-eq v0, p1, :cond_2

    .line 389
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastDownBtnIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->isWordComponent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 390
    const/high16 v0, 0x3300

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v2

    or-int/2addr v0, v1

    invoke-virtual {p0, v0, p2, p3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sendKeyEvent(III)V

    .line 394
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-boolean v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mShiftCehck:Z

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mShiftCehck:Z

    .line 396
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->shiftStateCheck()V

    goto :goto_0

    .line 400
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 403
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mFuzzyScenerioHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mFuzzyScenerioHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 405
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->dismissInput()V

    .line 406
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v0, v0, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleResult:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 407
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    goto/16 :goto_0

    .line 400
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "me"

    .prologue
    const/4 v0, 0x1

    .line 500
    iget v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mTutorialScenario:I

    if-ne v1, v0, :cond_0

    .line 501
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->onTouchEventRC(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 508
    :goto_0
    return v0

    .line 502
    :cond_0
    iget v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mTutorialScenario:I

    if-nez v1, :cond_1

    .line 503
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->onTouchEventLP(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 504
    :cond_1
    iget v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mTutorialScenario:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 505
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->onTouchEventMRC(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 507
    :cond_2
    const-string v1, "PortQwertySIPViewTutorial"

    const-string v2, "Tutorail senario not match..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public restartInput()V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method protected setIMEInputMode()V
    .locals 1

    .prologue
    .line 451
    const v0, 0x7150001

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sendKeyEvent(I)V

    .line 453
    const/high16 v0, 0x703

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sendKeyEvent(I)V

    .line 456
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->getPredictionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    const v0, 0x70a0001

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sendKeyEvent(I)V

    .line 460
    :goto_0
    return-void

    .line 459
    :cond_0
    const v0, 0x70a0002

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sendKeyEvent(I)V

    goto :goto_0
.end method

.method public setStatusIcon()V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method protected shiftStateCheck()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 278
    iget v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKey:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-boolean v2, v2, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mShiftCehck:Z

    if-eqz v2, :cond_0

    .line 282
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKey:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 287
    .local v0, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mShiftState:I

    .line 288
    .local v1, targetShiftState:I
    iget v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mShiftState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 289
    const/4 v1, 0x1

    .line 293
    :cond_2
    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    sparse-switch v2, :sswitch_data_0

    .line 302
    :goto_1
    iget v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mShiftState:I

    if-eq v2, v1, :cond_0

    .line 303
    invoke-virtual {p0, v1, v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->setIMECapMode(IZ)V

    goto :goto_0

    .line 297
    :sswitch_0
    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->doAutoCapCheck(I)I

    move-result v1

    .line 298
    goto :goto_1

    .line 293
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xa -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public startInput()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 149
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/EZSIPView;->startInput()V

    .line 150
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->initSettings()V

    .line 152
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCurrentKey:I

    .line 155
    sget v4, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    invoke-direct {p0, v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->setKeyboardbyLang(I)V

    .line 157
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_ShowHint:Z

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->setPreviewEnabled(Z)V

    .line 158
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->previewDismiss()V

    .line 160
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mAutoCapMode:I

    iput v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mAutoCapMode:I

    .line 162
    sget v0, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    .line 163
    .local v0, lang:I
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v5, -0xf

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v1

    .line 164
    .local v1, langKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    if-eqz v1, :cond_0

    .line 165
    sget-boolean v4, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLanguageSwitchMode:Z

    invoke-virtual {v1, v4}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 166
    sget-boolean v4, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLanguageSwitchMode:Z

    if-eqz v4, :cond_1

    .line 169
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalHeight:I

    iput v5, v4, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    .line 171
    const/4 v2, 0x0

    .line 172
    .local v2, predictionMode:Z
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->AddWordDisableButtons(Z)V

    .line 173
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->isTutorialing:Z

    .line 175
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    packed-switch v4, :pswitch_data_0

    .line 222
    :pswitch_0
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v4, v6}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 225
    :goto_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->clearWCL()V

    .line 228
    const/high16 v4, 0x70f

    invoke-static {v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->GetSysLocale(I)I

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sendKeyEvent(I)V

    .line 231
    const/high16 v4, 0x716

    invoke-virtual {p0, v0, v6}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->getQWKDBnamebyLang(II)I

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sendKeyEvent(I)V

    .line 234
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->InitialT9Setting()V

    .line 235
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->InitHTCFeature()V

    .line 238
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->setStatusIcon()V

    .line 240
    invoke-virtual {p0, v2, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->setPredictionMode(ZZ)V

    .line 243
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v4, v4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v5, v5, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-virtual {v3, v4, v5}, Lcom/htc/android/htcime/ezsip/Keyboard;->setImeOptions(II)V

    .line 246
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->invalidate()V

    .line 248
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "zh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mISZH:Z

    .line 250
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->startTutorial()V

    .line 251
    return-void

    .end local v2           #predictionMode:Z
    :cond_1
    move v0, v3

    .line 166
    goto :goto_0

    .line 184
    .restart local v2       #predictionMode:Z
    :pswitch_1
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v4, v6}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 185
    const/4 v2, 0x1

    .line 186
    goto :goto_1

    .line 189
    :pswitch_2
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v4, v7}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    goto :goto_1

    .line 193
    :pswitch_3
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v4, v7}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    goto :goto_1

    .line 197
    :pswitch_4
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    goto :goto_1

    .line 200
    :pswitch_5
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v4, v6}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 201
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->AddWordDisableButtons(Z)V

    goto :goto_1

    .line 205
    :pswitch_6
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v4, v6}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 206
    const/4 v2, 0x1

    .line 207
    iput v6, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mTutorialScenario:I

    goto :goto_1

    .line 211
    :pswitch_7
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v4, v6}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 212
    const/4 v2, 0x0

    .line 213
    iput v3, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mTutorialScenario:I

    goto/16 :goto_1

    .line 217
    :pswitch_8
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v4, v6}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 218
    const/4 v2, 0x1

    .line 219
    iput v7, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mTutorialScenario:I

    goto/16 :goto_1

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method
