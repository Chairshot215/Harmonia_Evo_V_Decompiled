.class public Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;
.super Ljava/lang/Object;
.source "XT9IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/XT9IME/XT9IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HTCIMEInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;,
        Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$Bigram;,
        Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;,
        Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;,
        Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$DelimiterRule;,
        Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;,
        Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$AutoSubstitute;
    }
.end annotation


# static fields
.field public static final INVALID_INDEX:I = -0x1


# instance fields
.field public EXACTWORD_SPAN:Landroid/text/style/BackgroundColorSpan;

.field public FG_EXACTWORD_SPAN:Landroid/text/style/ForegroundColorSpan;

.field public FG_NONWORD_SELECTION_SPAN:Landroid/text/style/ForegroundColorSpan;

.field public FG_SELECTION_SPAN:Landroid/text/style/ForegroundColorSpan;

.field public FG_TYPED_SPAN:Landroid/text/style/ForegroundColorSpan;

.field public IMFcompletions:[Landroid/view/inputmethod/CompletionInfo;

.field public NONWORD_SELECTION_SPAN:Landroid/text/style/BackgroundColorSpan;

.field public SELECTION_SPAN:Landroid/text/style/BackgroundColorSpan;

.field public TYPED_SPAN:Landroid/text/style/BackgroundColorSpan;

.field public final UNDERLINE_SPAN:Landroid/text/style/UnderlineSpan;

.field public autoSubstitute:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$AutoSubstitute;

.field public bigram:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$Bigram;

.field public bilingual:Lcom/htc/android/htcime/util/BilingualTool;

.field protected currentBgSpan:Landroid/text/style/BackgroundColorSpan;

.field protected currentFgSpan:Landroid/text/style/ForegroundColorSpan;

.field public delimiterRule:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$DelimiterRule;

.field public famousWordRule:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;

.field public idxEngAdvised:I

.field public idxIMEAdvised:I

.field public idxPastedCand:I

.field public idxWCLActived:I

.field private isBeginningOfSentence:Z

.field public isIMFAutoCompletion:Z

.field public isNonWordNoSuggestion:Z

.field public isReselectWCL:Z

.field public mPDSwitch:Lcom/htc/android/htcime/XT9IME/util/PDSwitch;

.field public postReselect:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;

.field private precedingWord:Ljava/lang/String;

.field public prev_selectionList:Ljava/lang/String;

.field public reselectAD:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;

.field public selectionList:Ljava/lang/String;

.field public smartCAP:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;

.field final synthetic this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/XT9IME/XT9IME;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 5930
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5886
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->UNDERLINE_SPAN:Landroid/text/style/UnderlineSpan;

    .line 5904
    iput-boolean v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isBeginningOfSentence:Z

    .line 5905
    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->precedingWord:Ljava/lang/String;

    .line 5913
    iput-boolean v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isIMFAutoCompletion:Z

    .line 5915
    new-instance v0, Lcom/htc/android/htcime/XT9IME/util/PDSwitch;

    invoke-direct {v0}, Lcom/htc/android/htcime/XT9IME/util/PDSwitch;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->mPDSwitch:Lcom/htc/android/htcime/XT9IME/util/PDSwitch;

    .line 5918
    new-instance v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$AutoSubstitute;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$AutoSubstitute;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;)V

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->autoSubstitute:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$AutoSubstitute;

    .line 5919
    new-instance v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;)V

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->reselectAD:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;

    .line 5920
    new-instance v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$DelimiterRule;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$DelimiterRule;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;)V

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->delimiterRule:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$DelimiterRule;

    .line 5922
    new-instance v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;)V

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->smartCAP:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$SmartCAP;

    .line 5923
    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->bilingual:Lcom/htc/android/htcime/util/BilingualTool;

    .line 5924
    new-instance v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$Bigram;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$Bigram;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;)V

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->bigram:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$Bigram;

    .line 5925
    new-instance v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;)V

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->postReselect:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;

    .line 5928
    iput-boolean v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isReselectWCL:Z

    .line 5931
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->reset()V

    .line 5932
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->reselectAD:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;

    invoke-virtual {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$ReselectAD;->clear()V

    .line 5933
    return-void
.end method


# virtual methods
.method protected getSapnBGColor()Landroid/text/style/BackgroundColorSpan;
    .locals 1

    .prologue
    .line 6010
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->currentBgSpan:Landroid/text/style/BackgroundColorSpan;

    return-object v0
.end method

.method protected getSapnFGColor()Landroid/text/style/ForegroundColorSpan;
    .locals 1

    .prologue
    .line 6025
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->currentFgSpan:Landroid/text/style/ForegroundColorSpan;

    return-object v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 3
    .parameter "imm"

    .prologue
    const/high16 v2, -0x100

    .line 5936
    new-instance v0, Lcom/htc/android/htcime/util/BilingualTool;

    invoke-direct {v0, p1}, Lcom/htc/android/htcime/util/BilingualTool;-><init>(Lcom/htc/android/htcime/HTCIMEService;)V

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->bilingual:Lcom/htc/android/htcime/util/BilingualTool;

    .line 5938
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    sget v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->SELECTED_HILITE_COLOR:I

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->SELECTION_SPAN:Landroid/text/style/BackgroundColorSpan;

    .line 5939
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const v1, -0x194f4f50

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->TYPED_SPAN:Landroid/text/style/BackgroundColorSpan;

    .line 5940
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const v1, -0x19079800

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->NONWORD_SELECTION_SPAN:Landroid/text/style/BackgroundColorSpan;

    .line 5941
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->EXACTWORD_SPAN:Landroid/text/style/BackgroundColorSpan;

    .line 5942
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->FG_SELECTION_SPAN:Landroid/text/style/ForegroundColorSpan;

    .line 5943
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->FG_TYPED_SPAN:Landroid/text/style/ForegroundColorSpan;

    .line 5944
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->FG_NONWORD_SELECTION_SPAN:Landroid/text/style/ForegroundColorSpan;

    .line 5945
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->FG_EXACTWORD_SPAN:Landroid/text/style/ForegroundColorSpan;

    .line 5947
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->refreshSkinColorSpans()V

    .line 5948
    return-void
.end method

.method protected isBeginningOfSentence()Z
    .locals 3

    .prologue
    .line 5988
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 5989
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCIMEInfo.isBeginningOfSentence] Not support in this mode!  (mMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5991
    :cond_0
    iget-boolean v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isBeginningOfSentence:Z

    return v0
.end method

.method isPQWERTY()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 6039
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v1

    iget v1, v1, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 6042
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isQWERTY()Z
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 6030
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v1

    iget v1, v1, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v1

    iget v1, v1, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-nez v1, :cond_2

    .line 6034
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected refreshSkinColorSpans()V
    .locals 0

    .prologue
    .line 5996
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 5951
    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->selectionList:Ljava/lang/String;

    .line 5952
    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->prev_selectionList:Ljava/lang/String;

    .line 5953
    iput v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    .line 5954
    iput v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    .line 5955
    iput v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    .line 5956
    iput v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    .line 5957
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->TYPED_SPAN:Landroid/text/style/BackgroundColorSpan;

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->currentBgSpan:Landroid/text/style/BackgroundColorSpan;

    .line 5958
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->FG_TYPED_SPAN:Landroid/text/style/ForegroundColorSpan;

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->currentFgSpan:Landroid/text/style/ForegroundColorSpan;

    .line 5959
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->resetSentenceInfo()V

    .line 5960
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->autoSubstitute:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$AutoSubstitute;

    invoke-virtual {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$AutoSubstitute;->clear()V

    .line 5964
    iget-boolean v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isIMFAutoCompletion:Z

    if-eqz v0, :cond_0

    .line 5965
    const-string v0, "Eric_J"

    const-string v1, "[HTCIMEInfo.reset] isIMFAutoCompletion flag reset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5966
    :cond_0
    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->IMFcompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 5967
    iput-boolean v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isIMFAutoCompletion:Z

    .line 5969
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->postReselect:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;

    invoke-virtual {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$PostReselect;->end()V

    .line 5970
    iput-boolean v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isReselectWCL:Z

    .line 5971
    return-void
.end method

.method resetSentenceInfo()V
    .locals 1

    .prologue
    .line 5974
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isBeginningOfSentence:Z

    .line 5975
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->precedingWord:Ljava/lang/String;

    .line 5976
    return-void
.end method

.method protected setPrecedingWord(Ljava/lang/String;)V
    .locals 1
    .parameter "word"

    .prologue
    .line 5979
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->precedingWord:Ljava/lang/String;

    .line 5980
    if-nez p1, :cond_0

    .line 5981
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isBeginningOfSentence:Z

    .line 5982
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->bigram:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$Bigram;

    invoke-virtual {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$Bigram;->onStartOfSentence()V

    .line 5985
    :goto_0
    return-void

    .line 5984
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isBeginningOfSentence:Z

    goto :goto_0
.end method

.method protected setSpanBGColor(Landroid/text/style/BackgroundColorSpan;)V
    .locals 2
    .parameter "newSpan"

    .prologue
    .line 6000
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->currentBgSpan:Landroid/text/style/BackgroundColorSpan;

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->NONWORD_SELECTION_SPAN:Landroid/text/style/BackgroundColorSpan;

    if-eq v0, v1, :cond_0

    .line 6001
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->currentBgSpan:Landroid/text/style/BackgroundColorSpan;

    .line 6002
    :cond_0
    return-void
.end method

.method protected setSpanBGColorForce(Landroid/text/style/BackgroundColorSpan;)V
    .locals 0
    .parameter "newSpan"

    .prologue
    .line 6006
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->currentBgSpan:Landroid/text/style/BackgroundColorSpan;

    .line 6007
    return-void
.end method

.method protected setSpanFGColor(Landroid/text/style/ForegroundColorSpan;)V
    .locals 2
    .parameter "newSpan"

    .prologue
    .line 6015
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->currentFgSpan:Landroid/text/style/ForegroundColorSpan;

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->FG_NONWORD_SELECTION_SPAN:Landroid/text/style/ForegroundColorSpan;

    if-eq v0, v1, :cond_0

    .line 6016
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->currentFgSpan:Landroid/text/style/ForegroundColorSpan;

    .line 6017
    :cond_0
    return-void
.end method

.method protected setSpanFGColorForce(Landroid/text/style/ForegroundColorSpan;)V
    .locals 0
    .parameter "newSpan"

    .prologue
    .line 6021
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->currentFgSpan:Landroid/text/style/ForegroundColorSpan;

    .line 6022
    return-void
.end method
