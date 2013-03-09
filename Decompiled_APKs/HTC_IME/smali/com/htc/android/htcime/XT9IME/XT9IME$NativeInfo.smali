.class public Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;
.super Ljava/lang/Object;
.source "XT9IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/XT9IME/XT9IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NativeInfo"
.end annotation


# static fields
.field public static final ET9MAXUDBWORDSIZE:I = 0x40

.field public static final ET9_TRACE_MAX_POINTS:I = 0x3e8

.field public static final ET9_TRACE_MAX_RAWDATA:I = 0x7d0

.field public static final HTC_KIDNone:I = 0x0

.field public static final HTC_LIDNone:I = 0x0

.field protected static final QW_SC_AUTO_SWITCH_POINT:I = 0x5

.field protected static final QW_SLMODE_CMPLT_PRMT_POINT:I = 0xff


# instance fields
.field protected exactWordPos:I

.field protected mCurr2ndLdbID:I

.field protected mCurrLdbID:I

.field protected mCurrMdbType:I

.field protected mSelLstMode:I

.field protected mSpellCheckState:I

.field final synthetic this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/XT9IME/XT9IME;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 6789
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6801
    iput v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mCurrLdbID:I

    .line 6802
    iput v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mCurr2ndLdbID:I

    .line 6803
    iput v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mCurrMdbType:I

    .line 6805
    iput v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    .line 6807
    iput v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mSelLstMode:I

    .line 6808
    iput v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mSpellCheckState:I

    return-void
.end method

.method private selLstModeByEWLen(I)V
    .locals 3
    .parameter "ewLen"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 6853
    const/16 v0, 0xff

    if-ge p1, v0, :cond_1

    .line 6855
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mSelLstMode:I

    if-eq v0, v1, :cond_0

    .line 6857
    invoke-static {v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetSelLstMode(I)V

    .line 6858
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iput v1, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mSelLstMode:I

    .line 6871
    :cond_0
    :goto_0
    return-void

    .line 6864
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mSelLstMode:I

    if-eqz v0, :cond_0

    .line 6866
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetSelLstMode(I)V

    .line 6867
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iput v2, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mSelLstMode:I

    goto :goto_0
.end method

.method private spellCheckModeByEWLen(I)V
    .locals 3
    .parameter "ewLen"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 6821
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->sFeature_AutoSwitchSpellingCheck:Z

    if-nez v0, :cond_1

    .line 6846
    :cond_0
    :goto_0
    return-void

    .line 6825
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMMData;->isQwertySpellingCorrectOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6828
    const/4 v0, 0x5

    if-ge p1, v0, :cond_2

    .line 6830
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mSpellCheckState:I

    if-eqz v0, :cond_0

    .line 6832
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeEnableSpellCheck(Z)V

    .line 6833
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iput v2, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mSpellCheckState:I

    goto :goto_0

    .line 6839
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mSpellCheckState:I

    if-eq v0, v1, :cond_0

    .line 6841
    invoke-static {v1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeEnableSpellCheck(Z)V

    .line 6842
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iput v1, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mSpellCheckState:I

    goto :goto_0
.end method


# virtual methods
.method protected NotifyWordCommit(Ljava/lang/String;)V
    .locals 3
    .parameter "acceptedCand"

    .prologue
    .line 6901
    invoke-static {p1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->pureCandStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6903
    .local v0, pureCand:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeIsKnownWord([CI)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 6904
    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeNoteWordCommit(Ljava/lang/String;)I

    .line 6905
    :cond_0
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    .line 6906
    return-void
.end method

.method protected NotifyWordCommitFirm(Ljava/lang/String;I)V
    .locals 3
    .parameter "acceptedCand"
    .parameter "acceptedCandIdx"

    .prologue
    .line 6890
    invoke-static {p1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->pureCandStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6892
    .local v0, pureCand:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeIsKnownWord([CI)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 6893
    invoke-static {p2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeNoteCandAccept(I)I

    .line 6894
    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeNoteWordCommit(Ljava/lang/String;)I

    .line 6896
    :cond_0
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeClearAllSymb()V

    .line 6897
    return-void
.end method

.method protected hanldeDBContentSensitive()V
    .locals 3

    .prologue
    .line 6878
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mCurrMdbType:I

    .line 6879
    const-string v0, "XT9IME"

    const-string v1, "[hanldeDBContentSensitive]  set PDSwitch\'s OnDiagnoseListener for Normal4PDSwitch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6880
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->mPDSwitch:Lcom/htc/android/htcime/XT9IME/util/PDSwitch;

    new-instance v1, Lcom/htc/android/htcime/XT9IME/XT9IME$Normal4PDSwitch;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    invoke-direct {v1, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME$Normal4PDSwitch;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME;)V

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/XT9IME/util/PDSwitch;->setOnDiagnoseListener(Lcom/htc/android/htcime/XT9IME/util/PDSwitch$OnDiagnoseListener;)V

    .line 6881
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->mPDSwitch:Lcom/htc/android/htcime/XT9IME/util/PDSwitch;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/XT9IME/util/PDSwitch;->setMaxDiagDataSize(I)V

    .line 6882
    iget v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mCurrMdbType:I

    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeSetMDB(I)V

    .line 6884
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->sIsTraceKeyboard:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeIsMDBEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6885
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeEnableMDB(Z)I

    .line 6886
    :cond_0
    return-void
.end method

.method protected tuneCoreCheckPoint(Z)V
    .locals 3
    .parameter "isDelete"

    .prologue
    .line 6812
    iget v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v0

    .line 6813
    .local v0, ew:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 6814
    .local v1, ewLen:I
    :goto_0
    if-eqz p1, :cond_1

    const/4 v2, -0x1

    :goto_1
    add-int/2addr v1, v2

    .line 6816
    invoke-direct {p0, v1}, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->spellCheckModeByEWLen(I)V

    .line 6817
    invoke-direct {p0, v1}, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->selLstModeByEWLen(I)V

    .line 6818
    return-void

    .line 6813
    .end local v1           #ewLen:I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    .line 6814
    .restart local v1       #ewLen:I
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method
