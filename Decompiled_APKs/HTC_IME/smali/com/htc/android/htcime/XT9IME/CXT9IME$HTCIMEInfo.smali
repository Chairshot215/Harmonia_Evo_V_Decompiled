.class public Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;
.super Ljava/lang/Object;
.source "CXT9IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/XT9IME/CXT9IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HTCIMEInfo"
.end annotation


# instance fields
.field public IMFcompletions:[Landroid/view/inputmethod/CompletionInfo;

.field public final SELECTION_SPAN:Landroid/text/style/BackgroundColorSpan;

.field public final UNDERLINE_SPAN:Landroid/text/style/UnderlineSpan;

.field public isIMFAutoCompletion:Z

.field public mActiveSpellIndex:I

.field public mCands:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

.field public mCandsCount:I

.field public mHiliteEnd:I

.field public mHiliteStart:I

.field public mInlineString:Ljava/lang/String;

.field public mInputType:I

.field public mLDBResID:I

.field public mLastInputKeyIndex:I

.field public mMultitapDone:Z

.field public mMultitapModeOn:Z

.field public mPhraseCount:I

.field public mPhrases:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

.field public mPredictIdx:I

.field public mSpellCount:I

.field public mSpellIdx:I

.field public mSpellings:[Lcom/htc/android/htcime/XT9IME/CXT9IME$CandContent;

.field public mStatus:I

.field public mWCLDisplay:Z

.field public mWCLString:Ljava/lang/String;

.field public selectionList:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/android/htcime/XT9IME/CXT9IME;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/XT9IME/CXT9IME;)V
    .locals 2
    .parameter

    .prologue
    .line 4832
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/CXT9IME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4827
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->isIMFAutoCompletion:Z

    .line 4829
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->UNDERLINE_SPAN:Landroid/text/style/UnderlineSpan;

    .line 4830
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    sget v1, Lcom/htc/android/htcime/XT9IME/CXT9IME;->SELECTED_HILITE_COLOR:I

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->SELECTION_SPAN:Landroid/text/style/BackgroundColorSpan;

    .line 4833
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->reset()V

    .line 4834
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 4837
    iput v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mStatus:I

    .line 4838
    iput v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    .line 4839
    iput-boolean v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mWCLDisplay:Z

    .line 4840
    iput v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPredictIdx:I

    .line 4841
    iput v1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellIdx:I

    .line 4842
    iput v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mSpellCount:I

    .line 4843
    iput v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mPhraseCount:I

    .line 4844
    iput v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mCandsCount:I

    .line 4845
    iput-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->mMultitapDone:Z

    .line 4847
    iput-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->selectionList:Ljava/lang/String;

    .line 4849
    iput-object v3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->IMFcompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 4850
    iput-boolean v0, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME$HTCIMEInfo;->isIMFAutoCompletion:Z

    .line 4851
    return-void
.end method
