.class public Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;
.super Lcom/htc/android/htcime/XT9IME/XT9IME;
.source "XT9IMEAutoComplete.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$NativeInfo;,
        Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$HTCIMEInfo;,
        Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$Url4PDSwitch;,
        Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$Email4PDSwitch;
    }
.end annotation


# static fields
.field private static AUTOCOMPLETE_HILITE_COLOR:I = 0x0

.field protected static final CLASS_NAME:Ljava/lang/String; = "XT9IMEAutoComplete"

.field private static FG_AUTOCOMPLETE_HILITE_COLOR:I = 0x0

.field private static final MAX_MDB_WORD_SIZE:I = 0x20

.field protected static final MaxLenToDoPD:I = 0x5

.field protected static final QW_SLMODE_CMPLT_PRMT_POINT:I

.field private static sBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/htcime/XT9IME/util/BlackListEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 905
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->sBlackList:Ljava/util/ArrayList;

    .line 907
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->sBlackList:Ljava/util/ArrayList;

    .line 910
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    .line 912
    sget-object v0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->sBlackList:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/android/htcime/XT9IME/util/BlackListEntry;

    const/4 v2, 0x0

    const-string v3, "gmail"

    invoke-direct {v1, v2, v3}, Lcom/htc/android/htcime/XT9IME/util/BlackListEntry;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 914
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;-><init>()V

    .line 42
    const-string v0, "XT9IMEAutoComplete"

    const-string v1, "Do constructor in AC"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$NativeInfo;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$NativeInfo;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;)V

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    .line 45
    new-instance v0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$HTCIMEInfo;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$HTCIMEInfo;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;)V

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    .line 46
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->imName:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    const/4 v1, 0x7

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->imID:I

    .line 48
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->FG_AUTOCOMPLETE_HILITE_COLOR:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    sput p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->FG_AUTOCOMPLETE_HILITE_COLOR:I

    return p0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->AUTOCOMPLETE_HILITE_COLOR:I

    return v0
.end method

.method public static getHighlightColor(Landroid/content/Context;)I
    .locals 7
    .parameter "context"

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "input_text_selection_highlight"

    const-string v5, "color"

    const-string v6, "com.htc"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 77
    .local v0, defResID:I
    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "link_highlight"

    const-string v5, "color"

    const-string v6, "com.htc"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 79
    :cond_0
    if-nez v0, :cond_1

    .line 80
    const v0, 0x7f08000d

    .line 83
    :cond_1
    const-string v3, "input_text_selection_highlight"

    invoke-static {p0, v3, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 84
    .local v1, resID:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 86
    .local v2, ret:I
    return v2
.end method

.method private isBlackListWord(Ljava/lang/String;)Z
    .locals 7
    .parameter "word"

    .prologue
    const/4 v4, 0x1

    const/4 v6, -0x1

    .line 917
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 919
    .local v3, wordLC:Ljava/lang/String;
    sget-object v5, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->sBlackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 920
    .local v0, blackListSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 922
    sget-object v5, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->sBlackList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcime/XT9IME/util/BlackListEntry;

    .line 923
    .local v1, blw:Lcom/htc/android/htcime/XT9IME/util/BlackListEntry;
    invoke-virtual {v1}, Lcom/htc/android/htcime/XT9IME/util/BlackListEntry;->isCaseSensitive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 924
    invoke-virtual {v1}, Lcom/htc/android/htcime/XT9IME/util/BlackListEntry;->getWord()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v6, :cond_2

    .line 932
    .end local v1           #blw:Lcom/htc/android/htcime/XT9IME/util/BlackListEntry;
    :cond_0
    :goto_1
    return v4

    .line 927
    .restart local v1       #blw:Lcom/htc/android/htcime/XT9IME/util/BlackListEntry;
    :cond_1
    invoke-virtual {v1}, Lcom/htc/android/htcime/XT9IME/util/BlackListEntry;->getWord()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v6, :cond_0

    .line 920
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 932
    .end local v1           #blw:Lcom/htc/android/htcime/XT9IME/util/BlackListEntry;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method acceptQWSuggest(Landroid/view/inputmethod/InputConnection;)V
    .locals 3
    .parameter "ic"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    .line 773
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 781
    :goto_0
    return-void

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 777
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    .line 779
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeClearAllSymb()V

    .line 780
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-virtual {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->reset()V

    goto :goto_0
.end method

.method buildWCL_QW(Landroid/view/inputmethod/InputConnection;)I
    .locals 6
    .parameter "InputConnection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v2, 0x1

    .line 272
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeGetCandCount()I

    move-result v0

    .line 274
    .local v0, ret:I
    if-lez v0, :cond_2

    .line 276
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->selectionList:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->selectionList:Ljava/lang/String;

    const/16 v3, 0x7c

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 277
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->selectionList:Ljava/lang/String;

    iput-object v3, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->prev_selectionList:Ljava/lang/String;

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeGetWCLString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->selectionList:Ljava/lang/String;

    .line 282
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeGetActiveWordIndex()I

    move-result v3

    iput v3, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    .line 283
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    if-le v0, v2, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->getHTCSuggestion(II)I

    move-result v1

    iput v1, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    .line 284
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iput v4, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    .line 285
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    iput v3, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    .line 288
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v1}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    .line 289
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mDummyString:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v3, v2}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 311
    :goto_1
    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    iput-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mWCLSELECTION:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    .line 313
    return v0

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    goto :goto_0

    .line 300
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 302
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mDummyString:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {p0, p1, v1, v3, v2}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 303
    iput-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    .line 305
    :cond_3
    iput-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    .line 307
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->clearWCL()V

    goto :goto_1
.end method

.method cancelQWSuggestAndPasteEW(Landroid/view/inputmethod/InputConnection;)V
    .locals 3
    .parameter "ic"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->isSuggestionRejected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    iput v1, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    .line 761
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 765
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    .line 767
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeClearAllSymb()V

    .line 768
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-virtual {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->reset()V

    .line 769
    return-void
.end method

.method public finishInput()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->finishInput()V

    .line 111
    const-string v0, "XT9IMEAutoComplete"

    const-string v1, "[finishInput]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-virtual {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->reset()V

    .line 114
    return-void
.end method

.method getHTCSuggestion(II)I
    .locals 2
    .parameter "suggIDXOrg"
    .parameter "candCount"

    .prologue
    .line 938
    move v0, p1

    .line 941
    .local v0, suggIDX:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 942
    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->pureCandStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->isBlackListWord(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 948
    :cond_0
    if-lt v0, p2, :cond_1

    .line 949
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v0, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    .line 951
    :cond_1
    return v0

    .line 945
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public handleFNKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "InputConnection"
    .parameter "FnInfo"
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 127
    const/high16 v3, 0xff

    and-int/2addr v3, p2

    shr-int/lit8 v0, v3, 0x10

    .line 128
    .local v0, fn_id:I
    const v3, 0xffff

    and-int v1, p2, v3

    .line 130
    .local v1, fn_val:I
    sparse-switch v0, :sswitch_data_0

    .line 263
    invoke-super {p0, p1, p2, p3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->handleFNKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z

    move-result v4

    .line 266
    :cond_0
    :goto_0
    :sswitch_0
    return v4

    .line 136
    :sswitch_1
    const-string v3, "XT9IMEAutoComplete"

    const-string v6, "[handleFNKeyDown] FN_INPUTMODE"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iput v5, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mSelLstMode:I

    .line 141
    invoke-static {v5}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeSetSelLstMode(I)V

    .line 144
    iput v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mMode:I

    .line 147
    invoke-static {v5}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeSetInputMode(I)V

    goto :goto_0

    .line 151
    :sswitch_2
    const-string v3, "XT9IMEAutoComplete"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleFNKeyDown] FN_XT9INPUTMODE received value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iput v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mMode:I

    .line 155
    if-ne v8, v1, :cond_1

    .line 156
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeSetMultiTapMode()V

    .line 163
    :goto_1
    invoke-static {v4}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeSetWordComplete(I)V

    goto :goto_0

    .line 159
    :cond_1
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeSetAmbigiousMode()V

    goto :goto_1

    .line 167
    :sswitch_3
    const-string v3, "XT9IMEAutoComplete"

    const-string v6, "[handleFNKeyDown] FN_XT9INIT"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iput-boolean v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mSpellCorrect:Z

    .line 171
    iget-boolean v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mSpellCorrect:Z

    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeEnableSpellCheck(Z)V

    .line 172
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget-boolean v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mSpellCorrect:Z

    if-eqz v3, :cond_2

    move v3, v4

    :goto_2
    iput v3, v6, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mSpellCheckState:I

    .line 175
    iput-boolean v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mNextWordPredict:Z

    .line 176
    iget-boolean v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mNextWordPredict:Z

    if-eqz v3, :cond_3

    move v3, v4

    :goto_3
    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeSetWordPredict(I)V

    .line 179
    and-int/lit8 v2, v1, 0x4

    .line 180
    .local v2, tmp:I
    if-eqz v2, :cond_4

    move v3, v4

    :goto_4
    iput-boolean v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mAutoAppend:Z

    .line 181
    iget-boolean v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mAutoAppend:Z

    if-eqz v3, :cond_5

    move v3, v4

    :goto_5
    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeSetAutoAppend(I)V

    .line 184
    iput-boolean v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mAutoSubstitute:Z

    .line 185
    iget-boolean v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mAutoSubstitute:Z

    if-eqz v3, :cond_6

    move v3, v4

    :goto_6
    const/16 v6, 0x11

    invoke-static {v3, v6}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeSetAutoSubstitute(II)I

    .line 188
    iput-boolean v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mWordComplete:Z

    .line 189
    iget-boolean v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mWordComplete:Z

    if-eqz v3, :cond_7

    move v3, v4

    :goto_7
    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeSetWordComplete(I)V

    .line 192
    iput-boolean v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mMultitapWordComplete:Z

    .line 195
    invoke-static {v5}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeSetBigramEnabled(Z)I

    .line 197
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-virtual {v3}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isQWERTY()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 198
    invoke-static {v4}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeSetExactInList(I)V

    .line 199
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iput v5, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    .line 216
    :goto_8
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    invoke-virtual {v3}, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->hanldeDBContentSensitive()V

    .line 217
    invoke-static {v4}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeSetWordCompletePoint(I)V

    goto/16 :goto_0

    .end local v2           #tmp:I
    :cond_2
    move v3, v5

    .line 172
    goto :goto_2

    :cond_3
    move v3, v5

    .line 176
    goto :goto_3

    .restart local v2       #tmp:I
    :cond_4
    move v3, v5

    .line 180
    goto :goto_4

    :cond_5
    move v3, v5

    .line 181
    goto :goto_5

    :cond_6
    move v3, v5

    .line 185
    goto :goto_6

    :cond_7
    move v3, v5

    .line 189
    goto :goto_7

    .line 201
    :cond_8
    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMMData;->is12KeyAlphabet()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v3, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    if-nez v3, :cond_9

    .line 202
    invoke-static {v4}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeSetExactInList(I)V

    .line 203
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iput v5, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    goto :goto_8

    .line 211
    :cond_9
    invoke-static {v8}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeSetExactInList(I)V

    .line 212
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    const/4 v5, -0x1

    iput v5, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    goto :goto_8

    .line 222
    .end local v2           #tmp:I
    :sswitch_4
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 224
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    .line 225
    const-string v3, ""

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v6, v5}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 226
    iput-object v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    .line 228
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeClearAllSymb()V

    .line 229
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-virtual {v3}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->reset()V

    goto/16 :goto_0

    .line 236
    :sswitch_5
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 238
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v6, v5}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 239
    iput-object v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    .line 241
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeClearAllSymb()V

    .line 242
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-virtual {v3}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->reset()V

    goto/16 :goto_0

    .line 247
    :sswitch_6
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->finishComposingText()V

    .line 250
    iput-object v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    .line 252
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeClearAllSymb()V

    .line 253
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-virtual {v3}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->reset()V

    goto/16 :goto_0

    .line 130
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_5
        0xa -> :sswitch_1
        0xb -> :sswitch_0
        0x10 -> :sswitch_5
        0x12 -> :sswitch_0
        0x15 -> :sswitch_2
        0x17 -> :sswitch_3
        0x1b -> :sswitch_4
        0x1c -> :sswitch_5
        0x1d -> :sswitch_6
    .end sparse-switch
.end method

.method public handleQWERTYKey(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z
    .locals 7
    .parameter "InputConnection"
    .parameter "unicode"
    .parameter "pos"
    .parameter "event"
    .parameter "landScape"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    .line 334
    const/4 v0, 0x1

    iget v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mMode:I

    if-ne v0, v1, :cond_1

    .line 336
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->mPDSwitch:Lcom/htc/android/htcime/XT9IME/util/PDSwitch;

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {p0, p2, p5}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->getKeyType_QW(IZ)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/XT9IME/util/PDSwitch;->diagnose(Lcom/htc/android/htcime/HTCIMEService;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->handleQWERTYKey_Regn(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z

    move-result v6

    .line 352
    .local v6, bHandle:Z
    :goto_0
    return v6

    .line 342
    .end local v6           #bHandle:Z
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->cancelQWSuggestAndPasteEW(Landroid/view/inputmethod/InputConnection;)V

    .line 343
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {p0, v0, p2, p4, p5}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->handleQWERTYKey_Dscr(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;Z)Z

    move-result v6

    .restart local v6       #bHandle:Z
    goto :goto_0

    .line 349
    .end local v6           #bHandle:Z
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {p0, v0, p2, p4, p5}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->handleQWERTYKey_Dscr(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;Z)Z

    move-result v6

    .restart local v6       #bHandle:Z
    goto :goto_0
.end method

.method public handleQWERTYKeyAC(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z
    .locals 4
    .parameter "InputConnection"
    .parameter "ucode"
    .parameter "pos"
    .parameter "event"
    .parameter "landScape"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    .line 498
    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mMode:I

    if-ne v1, v2, :cond_1

    .line 500
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->mPDSwitch:Lcom/htc/android/htcime/XT9IME/util/PDSwitch;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x65

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/XT9IME/util/PDSwitch;->diagnose(Lcom/htc/android/htcime/HTCIMEService;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    invoke-virtual/range {p0 .. p5}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->handleQWERTYKeyAC_Regn(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z

    move-result v0

    .line 515
    .local v0, bHandle:Z
    :goto_0
    return v0

    .line 506
    .end local v0           #bHandle:Z
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->cancelQWSuggestAndPasteEW(Landroid/view/inputmethod/InputConnection;)V

    .line 507
    invoke-virtual/range {p0 .. p5}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->handleQWERTYKeyAC_Dscr(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z

    move-result v0

    .restart local v0       #bHandle:Z
    goto :goto_0

    .line 512
    .end local v0           #bHandle:Z
    :cond_1
    invoke-virtual/range {p0 .. p5}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->handleQWERTYKeyAC_Dscr(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z

    move-result v0

    .restart local v0       #bHandle:Z
    goto :goto_0
.end method

.method public handleQWERTYKeyAC_Dscr(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z
    .locals 6
    .parameter "InputConnection"
    .parameter "ucode"
    .parameter "pos"
    .parameter "event"
    .parameter "landScape"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 543
    shr-int/lit8 v0, p2, 0x17

    .line 544
    .local v0, leftest_bit:I
    const v1, 0x7fffff

    and-int/2addr p2, v1

    .line 546
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 549
    if-ne v0, v4, :cond_0

    .line 550
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1, v4, v5}, Lcom/htc/android/htcime/HTCIMEService;->deleteSurroundingText(II)Z

    .line 552
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const-string v2, ""

    int-to-char v3, p2

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3, v5}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 554
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 555
    return v4
.end method

.method public handleQWERTYKeyAC_Regn(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z
    .locals 5
    .parameter "InputConnection"
    .parameter "ucode"
    .parameter "pos"
    .parameter "event"
    .parameter "landScape"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 522
    shr-int/lit8 v0, p2, 0x17

    .line 523
    .local v0, leftest_bit:I
    const v1, 0x7fffff

    and-int/2addr p2, v1

    .line 527
    if-ne v0, v4, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    .line 530
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeClearOneSymb()V

    .line 534
    :cond_0
    invoke-static {p2}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeAddSymbol(I)V

    .line 535
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->buildWCL_QW(Landroid/view/inputmethod/InputConnection;)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->candidate_count:I

    .line 537
    return v4
.end method

.method public handleQWERTYKey_Regn(Landroid/view/inputmethod/InputConnection;ILcom/htc/android/htcime/XT9IME/XT9IME$Position;Landroid/view/KeyEvent;Z)Z
    .locals 8
    .parameter "InputConnection"
    .parameter "unicode"
    .parameter "pos"
    .parameter "event"
    .parameter "landScape"

    .prologue
    const/4 v4, 0x1

    .line 374
    :try_start_0
    invoke-virtual {p0, p2, p5}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mapQWERTYKdbIndex(IZ)I

    move-result v2

    .line 376
    .local v2, real_handle_key:I
    packed-switch v2, :pswitch_data_0

    .line 458
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/htc/android/htcime/HTCIMMData;->touchEvent_doLagAlert:Z

    .line 460
    invoke-static {p2}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 461
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeProcessKey(I)I

    .line 465
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->buildWCL_QW(Landroid/view/inputmethod/InputConnection;)I

    move-result v3

    iput v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->candidate_count:I

    .line 476
    .end local v2           #real_handle_key:I
    :cond_0
    :goto_1
    :pswitch_0
    return v4

    .line 379
    .restart local v2       #real_handle_key:I
    :pswitch_1
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/htc/android/htcime/HTCIMMData;->touchEvent_doLagAlert:Z

    .line 381
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 383
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->isAutoCompleted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 385
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v5, v5, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    iput v5, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    .line 386
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    .line 387
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {p0, p1, v3, v5, v6}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 467
    .end local v2           #real_handle_key:I
    :catch_0
    move-exception v3

    goto :goto_1

    .line 391
    .restart local v2       #real_handle_key:I
    :cond_1
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeClearOneSymb()V

    .line 393
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeGetCandCount()I

    move-result v3

    iput v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->candidate_count:I

    .line 395
    iget v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->candidate_count:I

    if-lez v3, :cond_3

    .line 397
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeGetActiveWordIndex()I

    move-result v5

    iput v5, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    .line 398
    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->candidate_count:I

    if-le v3, v4, :cond_2

    move v3, v4

    :goto_2
    iget v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->candidate_count:I

    invoke-virtual {p0, v3, v6}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->getHTCSuggestion(II)I

    move-result v3

    iput v3, v5, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    .line 399
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    const/4 v5, -0x1

    iput v5, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxWCLActived:I

    .line 400
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v5, v5, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    iput v5, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    .line 402
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    .line 403
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {p0, p1, v3, v5, v6}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 471
    .end local v2           #real_handle_key:I
    :catch_1
    move-exception v3

    goto :goto_1

    .line 398
    .restart local v2       #real_handle_key:I
    :cond_2
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxEngAdvised:I

    goto :goto_2

    .line 407
    :cond_3
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    const-string v5, ""

    const/4 v6, 0x1

    invoke-virtual {p0, p1, v3, v5, v6}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 408
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    .line 409
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-virtual {v3}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->reset()V

    goto/16 :goto_1

    .line 415
    :cond_4
    const/16 v3, 0x43

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->doNormalKey(I)V

    goto/16 :goto_1

    .line 420
    :pswitch_2
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/htc/android/htcime/HTCIMMData;->touchEvent_doLagAlert:Z

    .line 423
    const/4 v1, 0x0

    .line 424
    .local v1, consumeSpace:Z
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 426
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->isAutoCompleted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 427
    const/4 v1, 0x1

    .line 429
    :cond_5
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->acceptQWSuggest(Landroid/view/inputmethod/InputConnection;)V

    .line 432
    :cond_6
    if-nez v1, :cond_0

    .line 433
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const-string v5, ""

    const-string v6, " "

    const/4 v7, 0x0

    invoke-virtual {p0, v3, v5, v6, v7}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 436
    .end local v1           #consumeSpace:Z
    :pswitch_3
    const/4 v0, 0x0

    .line 437
    .local v0, consumeEnter:Z
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 439
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->isAutoCompleted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 440
    const/4 v0, 0x1

    .line 442
    :cond_7
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->acceptQWSuggest(Landroid/view/inputmethod/InputConnection;)V

    .line 445
    :cond_8
    if-nez v0, :cond_0

    .line 446
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Lcom/htc/android/htcime/HTCIMEService;->sendKeyChar(C)V

    goto/16 :goto_1

    .line 450
    .end local v0           #consumeEnter:Z
    :pswitch_4
    const-string v3, "XT9IMEAutoComplete"

    const-string v5, "[handleQWERTYKey_Regn] Symbol key should send by unicode protocol"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 463
    :cond_9
    iget v3, p3, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;->x:I

    iget v5, p3, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;->y:I

    invoke-static {v2, v3, v5}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeProcessTap(III)I
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public handleSystemKeyDown(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "InputConnection"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 632
    const/4 v0, 0x0

    .line 636
    .local v0, bRet:Z
    sparse-switch p2, :sswitch_data_0

    .line 696
    :cond_0
    :goto_0
    return v0

    .line 640
    :sswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 642
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->isAutoCompleted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 643
    const/4 v0, 0x1

    .line 645
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->acceptQWSuggest(Landroid/view/inputmethod/InputConnection;)V
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 691
    :catch_0
    move-exception v1

    .line 693
    .local v1, e:Landroid/util/AndroidException;
    invoke-virtual {v1}, Landroid/util/AndroidException;->printStackTrace()V

    goto :goto_0

    .line 651
    .end local v1           #e:Landroid/util/AndroidException;
    :sswitch_1
    :try_start_1
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 652
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v2, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 654
    .local v2, inputType:I
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->isAutoCompleted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 656
    const/4 v0, 0x1

    .line 659
    and-int/lit8 v3, v2, 0xf

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const v3, 0xfff000

    and-int/2addr v3, v2

    const/high16 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 661
    const/4 v0, 0x0

    .line 664
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->cancelQWSuggestAndPasteEW(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_0

    .line 669
    .end local v2           #inputType:I
    :sswitch_2
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    .line 670
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeClearAllSymb()V

    .line 671
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-virtual {v3}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->reset()V

    goto :goto_0

    .line 676
    :sswitch_3
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 678
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->isAutoCompleted(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/util/AndroidException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 679
    const/4 v0, 0x1

    goto :goto_0

    .line 685
    :sswitch_4
    const/4 v0, 0x1

    .line 686
    goto :goto_0

    .line 636
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_3
        0x3e -> :sswitch_4
        0x42 -> :sswitch_3
    .end sparse-switch
.end method

.method public handleSystemKeyUp(Landroid/view/inputmethod/InputConnection;ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "InputConnection"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 712
    const/4 v0, 0x0

    .line 715
    .local v0, bRet:Z
    sparse-switch p2, :sswitch_data_0

    .line 751
    :cond_0
    :goto_0
    return v0

    .line 718
    :sswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 720
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->isAutoCompleted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 721
    const/4 v0, 0x1

    .line 723
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->acceptQWSuggest(Landroid/view/inputmethod/InputConnection;)V
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 746
    :catch_0
    move-exception v2

    .line 748
    .local v2, e:Landroid/util/AndroidException;
    invoke-virtual {v2}, Landroid/util/AndroidException;->printStackTrace()V

    goto :goto_0

    .line 729
    .end local v2           #e:Landroid/util/AndroidException;
    :sswitch_1
    const/4 v1, 0x0

    .line 730
    .local v1, consumeSpace:Z
    :try_start_1
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 732
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->isAutoCompleted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 733
    const/4 v1, 0x1

    .line 735
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->acceptQWSuggest(Landroid/view/inputmethod/InputConnection;)V

    .line 738
    :cond_3
    if-nez v1, :cond_4

    .line 739
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const-string v4, ""

    const-string v5, " "

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/util/AndroidException; {:try_start_1 .. :try_end_1} :catch_0

    .line 741
    :cond_4
    const/4 v0, 0x1

    .line 742
    goto :goto_0

    .line 715
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x3e -> :sswitch_1
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method handleTerm(Landroid/view/inputmethod/InputConnection;I)V
    .locals 7
    .parameter "InputConnection"
    .parameter "idx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 579
    sget-object v3, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mSpecTerms:[Ljava/lang/String;

    aget-object v1, v3, p2

    .line 584
    .local v1, term:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 585
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v2

    .line 589
    .local v2, textBeforCursor:Ljava/lang/CharSequence;
    :goto_0
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 590
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_0

    .line 591
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 598
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 600
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->mPDSwitch:Lcom/htc/android/htcime/XT9IME/util/PDSwitch;

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v5, 0x65

    invoke-virtual {v3, v4, v5}, Lcom/htc/android/htcime/XT9IME/util/PDSwitch;->diagnose(Lcom/htc/android/htcime/HTCIMEService;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 602
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 603
    invoke-virtual {v1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeAddSymbol(I)V

    .line 602
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 587
    .end local v0           #i:I
    .end local v2           #textBeforCursor:Ljava/lang/CharSequence;
    :cond_1
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3, v5}, Lcom/htc/android/htcime/HTCIMEService;->getTextBeforeCursor(I)Ljava/lang/CharSequence;

    move-result-object v2

    .restart local v2       #textBeforCursor:Ljava/lang/CharSequence;
    goto :goto_0

    .line 594
    :cond_2
    const-string v3, "XT9IMEAutoComplete"

    const-string v4, "Can\'t get text before cursor!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 605
    .restart local v0       #i:I
    :cond_3
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->buildWCL_QW(Landroid/view/inputmethod/InputConnection;)I

    move-result v3

    iput v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->candidate_count:I

    .line 617
    .end local v0           #i:I
    :goto_3
    return-void

    .line 609
    :cond_4
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->cancelQWSuggestAndPasteEW(Landroid/view/inputmethod/InputConnection;)V

    .line 610
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mDummyString:Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v1, v6}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 615
    :cond_5
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mDummyString:Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v1, v6}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3
.end method

.method handleTextBeforeCursor()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 847
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v6}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    .line 850
    .local v5, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v5, :cond_0

    .line 851
    const-string v6, "XT9IMEAutoComplete"

    const-string v7, "[handleTextBeforeCursor] null inputConnection"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :goto_0
    return-void

    .line 855
    :cond_0
    invoke-interface {v5, v7}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 856
    const-string v6, "XT9IMEAutoComplete"

    const-string v7, "[handleTextBeforeCursor] text is selected."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 860
    :cond_1
    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v8, 0x1e

    invoke-virtual {v6, v8}, Lcom/htc/android/htcime/HTCIMEService;->getTextBeforeCursor(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 861
    .local v1, cs:Ljava/lang/CharSequence;
    if-nez v1, :cond_2

    .line 862
    const-string v6, "XT9IMEAutoComplete"

    const-string v7, "[handleTextBeforeCursor] getTextBeforeCursor return null."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 867
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 868
    .local v3, fieldText:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 869
    invoke-virtual {v3, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 870
    .local v0, cp:I
    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v7

    :goto_2
    invoke-static {v0, v6}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeAddSymbolOnly(II)V

    .line 868
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 870
    :cond_3
    const/4 v6, 0x1

    goto :goto_2

    .line 872
    .end local v0           #cp:I
    :cond_4
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeBuildCandList()I

    .line 876
    :try_start_0
    invoke-interface {v5}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 878
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 879
    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->rebuildHTCIMEInfo(Landroid/view/inputmethod/InputConnection;)I

    move-result v6

    iput v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->candidate_count:I

    .line 881
    invoke-interface {v5}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 882
    :catch_0
    move-exception v2

    .line 883
    .local v2, e:Landroid/util/AndroidException;
    invoke-virtual {v2}, Landroid/util/AndroidException;->printStackTrace()V

    goto :goto_0
.end method

.method handleUnicodeChar(Landroid/view/inputmethod/InputConnection;CLandroid/view/KeyEvent;)V
    .locals 4
    .parameter "InputConnection"
    .parameter "uni_char"
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    .line 560
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->mPDSwitch:Lcom/htc/android/htcime/XT9IME/util/PDSwitch;

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/XT9IME/util/PDSwitch;->diagnose(Lcom/htc/android/htcime/HTCIMEService;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    invoke-static {p2}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeAddSymbol(I)V

    .line 562
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->buildWCL_QW(Landroid/view/inputmethod/InputConnection;)I

    move-result v0

    iput v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->candidate_count:I

    .line 572
    :goto_0
    return-void

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->cancelQWSuggestAndPasteEW(Landroid/view/inputmethod/InputConnection;)V

    .line 567
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 568
    invoke-virtual {p0, p2}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->doublePeriodPreprocess(C)V

    .line 569
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mDummyString:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 570
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 2
    .parameter "htcIMM"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->init(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 55
    const-string v0, "XT9IMEAutoComplete"

    const-string v1, "[init]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method isSuggestionRejected()Z
    .locals 2

    .prologue
    .line 831
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxIMEAdvised:I

    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadCommonCtrlValue()V
    .locals 1

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->getHighlightColor(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->AUTOCOMPLETE_HILITE_COLOR:I

    .line 1196
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-virtual {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->refreshSkinColorSpans()V

    .line 1197
    return-void
.end method

.method protected loadConstant(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IME;->loadConstant(Landroid/content/Context;)V

    .line 61
    invoke-static {p1}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->getHighlightColor(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->AUTOCOMPLETE_HILITE_COLOR:I

    .line 62
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->onDestroy()V

    .line 120
    const-string v0, "XT9IMEAutoComplete"

    const-string v1, "[onDestroy]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method

.method public preProcess()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->mCurrMdbType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->handleTextBeforeCursor()V

    .line 104
    :cond_0
    return-void
.end method

.method rebuildHTCIMEInfo(Landroid/view/inputmethod/InputConnection;)I
    .locals 4
    .parameter "InputConnection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    .line 889
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->buildWCL_QW(Landroid/view/inputmethod/InputConnection;)I

    move-result v0

    .line 891
    .local v0, ret:I
    if-lez v0, :cond_0

    .line 893
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mNativeInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;

    iget v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME$NativeInfo;->exactWordPos:I

    iput v2, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    .line 896
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    iget v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->idxPastedCand:I

    invoke-static {v1}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    .line 897
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mDummyString:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 900
    :cond_0
    return v0
.end method

.method replaceInlineString(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .parameter "InputConnection"
    .parameter "old_str"
    .parameter "str"
    .parameter "setHilite"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x21

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 785
    if-nez p3, :cond_0

    .line 827
    :goto_0
    return-void

    .line 788
    :cond_0
    const/16 v2, 0x3c

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 789
    .local v1, autoCmp_Start:I
    const/16 v2, 0x3e

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 790
    .local v0, autoCmp_End:I
    if-eq v4, v1, :cond_1

    if-eq v4, v0, :cond_1

    if-ge v1, v0, :cond_1

    .line 791
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    if-ne v2, v3, :cond_3

    .line 792
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p3, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 797
    :cond_1
    :goto_1
    if-eqz p4, :cond_4

    .line 799
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 800
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 802
    if-eq v4, v1, :cond_2

    if-eq v4, v0, :cond_2

    if-ge v1, v0, :cond_2

    .line 806
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mSpanSB:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-virtual {v3}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->getSapnBGColor()Landroid/text/style/BackgroundColorSpan;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v2, v3, v1, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 807
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mSpanSB:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-virtual {v3}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->getSapnFGColor()Landroid/text/style/ForegroundColorSpan;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v2, v3, v1, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 815
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mSpanSB:Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->setComposingText(Landroid/text/Spanned;I)V

    .line 817
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, v2, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    goto :goto_0

    .line 794
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p3, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 821
    :cond_4
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, p3, v3}, Lcom/htc/android/htcime/HTCIMEService;->commitText(Ljava/lang/CharSequence;I)V

    .line 822
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mSpanSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 824
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mIMData:Lcom/htc/android/htcime/Intf/HTCIMData;

    iput v5, v2, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    goto/16 :goto_0
.end method

.method public startInput()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME;->startInput()V

    .line 94
    const-string v0, "XT9IMEAutoComplete"

    const-string v1, "[startInput]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v1, 0x7

    iput v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrPriIMID:I

    .line 97
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-virtual {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->reset()V

    .line 98
    return-void
.end method
