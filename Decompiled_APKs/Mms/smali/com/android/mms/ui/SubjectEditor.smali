.class public final Lcom/android/mms/ui/SubjectEditor;
.super Landroid/widget/EditText;
.source "SubjectEditor.java"


# static fields
.field public static SUBJECT_MAX_LENGTH:I

.field public static SUBJECT_MAX_LENGTH_WITH_UNICODE_CMCC:I

.field public static SUBJECT_MAX_LENGTH_WITH_UNICODE_KT:I

.field private static SUBJECT_MAX_LENGTH_WITH_Unicode:I


# instance fields
.field private mActivated:Z

.field private mWatcher:Lcom/android/mms/ui/StateWatcher;

.field private subject:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xd

    .line 41
    const/16 v0, 0x28

    sput v0, Lcom/android/mms/ui/SubjectEditor;->SUBJECT_MAX_LENGTH:I

    .line 44
    sput v1, Lcom/android/mms/ui/SubjectEditor;->SUBJECT_MAX_LENGTH_WITH_Unicode:I

    .line 45
    sput v1, Lcom/android/mms/ui/SubjectEditor;->SUBJECT_MAX_LENGTH_WITH_UNICODE_CMCC:I

    .line 48
    const/16 v0, 0x14

    sput v0, Lcom/android/mms/ui/SubjectEditor;->SUBJECT_MAX_LENGTH_WITH_UNICODE_KT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/SubjectEditor;->subject:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SubjectEditor;->mActivated:Z

    .line 60
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SubjectEditor;->init(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/SubjectEditor;->subject:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SubjectEditor;->mActivated:Z

    .line 65
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SubjectEditor;->init(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/SubjectEditor;->subject:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SubjectEditor;->mActivated:Z

    .line 70
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SubjectEditor;->init(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/android/mms/ui/SubjectEditor;->SUBJECT_MAX_LENGTH_WITH_Unicode:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    sput p0, Lcom/android/mms/ui/SubjectEditor;->SUBJECT_MAX_LENGTH_WITH_Unicode:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SubjectEditor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/mms/ui/SubjectEditor;->subject:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/SubjectEditor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/mms/ui/SubjectEditor;->subject:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SubjectEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/mms/ui/SubjectEditor;->getDefaultSubjectLengthLimit()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SubjectEditor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/mms/ui/SubjectEditor;->mActivated:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SubjectEditor;)Lcom/android/mms/ui/StateWatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/mms/ui/SubjectEditor;->mWatcher:Lcom/android/mms/ui/StateWatcher;

    return-object v0
.end method

.method private getDefaultSubjectLengthLimit()I
    .locals 2

    .prologue
    .line 175
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_0

    .line 176
    const/16 v0, 0x50

    .line 179
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x28

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/mms/ui/SubjectEditor;->getDefaultSubjectLengthLimit()I

    move-result v1

    sput v1, Lcom/android/mms/ui/SubjectEditor;->SUBJECT_MAX_LENGTH:I

    .line 83
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    sget v3, Lcom/android/mms/ui/SubjectEditor;->SUBJECT_MAX_LENGTH:I

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 85
    .local v0, subectFilter:[Landroid/text/InputFilter;
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SubjectEditor;->setFilters([Landroid/text/InputFilter;)V

    .line 90
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SubjectEditor;->setSubjectChangedListener(Landroid/content/Context;)V

    .line 93
    new-instance v1, Lcom/android/mms/ui/SubjectEditor$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SubjectEditor$1;-><init>(Lcom/android/mms/ui/SubjectEditor;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SubjectEditor;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 108
    iget-object v1, p0, Lcom/android/mms/ui/SubjectEditor;->mContext:Landroid/content/Context;

    const-string v2, "common_black_inputfield_view"

    const v3, 0x7f0200e7

    invoke-static {v1, p0, v2, v3}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->changeBgDrawable(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)V

    .line 109
    return-void
.end method

.method private setSubjectChangedListener(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 113
    new-instance v0, Lcom/android/mms/ui/SubjectEditor$2;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/ui/SubjectEditor$2;-><init>(Lcom/android/mms/ui/SubjectEditor;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SubjectEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 170
    return-void
.end method


# virtual methods
.method declared-synchronized activate()V
    .locals 2

    .prologue
    .line 233
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/mms/ui/SubjectEditor;->mActivated:Z

    .line 234
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SubjectEditor;->setVisibility(I)V

    .line 235
    invoke-virtual {p0}, Lcom/android/mms/ui/SubjectEditor;->requestFocus()Z

    .line 236
    iget-object v0, p0, Lcom/android/mms/ui/SubjectEditor;->mWatcher:Lcom/android/mms/ui/StateWatcher;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/mms/ui/SubjectEditor;->mWatcher:Lcom/android/mms/ui/StateWatcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/StateWatcher;->updateHasSubjectEditor(Z)V

    .line 238
    invoke-virtual {p0}, Lcom/android/mms/ui/SubjectEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/mms/ui/SubjectEditor;->mWatcher:Lcom/android/mms/ui/StateWatcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/StateWatcher;->updateHasSubject(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :cond_0
    monitor-exit p0

    return-void

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized deactivate()V
    .locals 2

    .prologue
    .line 223
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/mms/ui/SubjectEditor;->mActivated:Z

    .line 224
    invoke-virtual {p0}, Lcom/android/mms/ui/SubjectEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/method/TextKeyListener;->clear(Landroid/text/Editable;)V

    .line 225
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SubjectEditor;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/SubjectEditor;->mWatcher:Lcom/android/mms/ui/StateWatcher;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/mms/ui/SubjectEditor;->mWatcher:Lcom/android/mms/ui/StateWatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/StateWatcher;->updateHasSubject(Z)V

    .line 228
    iget-object v0, p0, Lcom/android/mms/ui/SubjectEditor;->mWatcher:Lcom/android/mms/ui/StateWatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/StateWatcher;->updateHasSubjectEditor(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :cond_0
    monitor-exit p0

    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public disableIMECount()V
    .locals 4

    .prologue
    .line 256
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 257
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-nez v1, :cond_0

    .line 264
    :goto_0
    return-void

    .line 260
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 261
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "remaincount"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v2, "textsize"

    const/high16 v3, 0x4140

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 263
    const-string v2, "inputRemainCount"

    invoke-virtual {v1, p0, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public isActivated()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/android/mms/ui/SubjectEditor;->mActivated:Z

    return v0
.end method

.method public setActivated(Z)V
    .locals 0
    .parameter "activate"

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/android/mms/ui/SubjectEditor;->mActivated:Z

    .line 251
    return-void
.end method

.method setStateWatcher(Lcom/android/mms/ui/StateWatcher;)V
    .locals 0
    .parameter "sw"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/mms/ui/SubjectEditor;->mWatcher:Lcom/android/mms/ui/StateWatcher;

    .line 220
    return-void
.end method
