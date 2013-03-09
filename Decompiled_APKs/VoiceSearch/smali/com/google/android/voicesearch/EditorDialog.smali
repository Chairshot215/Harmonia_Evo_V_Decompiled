.class public Lcom/google/android/voicesearch/EditorDialog;
.super Landroid/app/Dialog;
.source "EditorDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/EditorDialog$Listener;
    }
.end annotation


# instance fields
.field private final mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

.field private mAccounts:[Ljava/lang/String;

.field private mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

.field private mCancelButton:Landroid/widget/Button;

.field private mContent:Landroid/widget/LinearLayout;

.field private mEditor:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

.field private mGoButton:Landroid/widget/Button;

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mListener:Lcom/google/android/voicesearch/EditorDialog$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/voicesearch/util/AccountHelper;)V
    .locals 1
    .parameter "context"
    .parameter "accountHelper"

    .prologue
    .line 75
    const v0, 0x7f0c0001

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 76
    iput-object p2, p0, Lcom/google/android/voicesearch/EditorDialog;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    .line 77
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/EditorDialog;)Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mEditor:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/EditorDialog;)Lcom/google/android/voicesearch/EditorDialog$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mListener:Lcom/google/android/voicesearch/EditorDialog$Listener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/voicesearch/EditorDialog;)Lcom/google/android/voicesearch/actions/MultislotVoiceAction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/voicesearch/EditorDialog;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/voicesearch/EditorDialog;->mAccounts:[Ljava/lang/String;

    return-object p1
.end method

.method private hideKeyboard()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mContent:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/google/android/voicesearch/EditorDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 131
    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/google/android/voicesearch/EditorDialog;->hideKeyboard()V

    .line 136
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 137
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 83
    const v1, 0x7f040007

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/EditorDialog;->setContentView(I)V

    .line 86
    invoke-virtual {p0}, Lcom/google/android/voicesearch/EditorDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 87
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 88
    invoke-virtual {p0}, Lcom/google/android/voicesearch/EditorDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 90
    const v1, 0x7f0e000f

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/EditorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/google/android/voicesearch/EditorDialog;->mContent:Landroid/widget/LinearLayout;

    .line 91
    const v1, 0x7f0e0010

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/EditorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    iput-object v1, p0, Lcom/google/android/voicesearch/EditorDialog;->mEditor:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    .line 93
    const v1, 0x7f0e0012

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/EditorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/google/android/voicesearch/EditorDialog;->mGoButton:Landroid/widget/Button;

    .line 94
    iget-object v1, p0, Lcom/google/android/voicesearch/EditorDialog;->mGoButton:Landroid/widget/Button;

    new-instance v2, Lcom/google/android/voicesearch/EditorDialog$1;

    invoke-direct {v2, p0}, Lcom/google/android/voicesearch/EditorDialog$1;-><init>(Lcom/google/android/voicesearch/EditorDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v1, 0x7f0e0011

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/EditorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/google/android/voicesearch/EditorDialog;->mCancelButton:Landroid/widget/Button;

    .line 108
    iget-object v1, p0, Lcom/google/android/voicesearch/EditorDialog;->mCancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/google/android/voicesearch/EditorDialog$2;

    invoke-direct {v2, p0}, Lcom/google/android/voicesearch/EditorDialog$2;-><init>(Lcom/google/android/voicesearch/EditorDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {p0}, Lcom/google/android/voicesearch/EditorDialog;->updateLayout()V

    .line 117
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 185
    const v0, 0x7f0a07e0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/google/android/voicesearch/EditorDialog$4;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/EditorDialog$4;-><init>(Lcom/google/android/voicesearch/EditorDialog;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 194
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/google/android/voicesearch/EditorDialog;->hideKeyboard()V

    .line 141
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/android/voicesearch/EditorDialog;->updateLayout()V

    .line 122
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mEditor:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    iget-object v1, p0, Lcom/google/android/voicesearch/EditorDialog;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->setAction(Lcom/google/android/voicesearch/actions/MultislotVoiceAction;)V

    .line 123
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mEditor:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    iget-object v1, p0, Lcom/google/android/voicesearch/EditorDialog;->mAccounts:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->setAccounts([Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mGoButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/android/voicesearch/EditorDialog;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/EditorDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->getSubmitString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method

.method public setAction(Lcom/google/android/voicesearch/actions/MultislotVoiceAction;Ljava/util/List;)V
    .locals 3
    .parameter "action"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/voicesearch/actions/MultislotVoiceAction;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p2, actions:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/voicesearch/actions/VoiceAction;>;"
    iput-object p1, p0, Lcom/google/android/voicesearch/EditorDialog;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    .line 151
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->requiresMailAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/EditorDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/voicesearch/EditorDialog$3;

    invoke-direct {v2, p0}, Lcom/google/android/voicesearch/EditorDialog$3;-><init>(Lcom/google/android/voicesearch/EditorDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/util/AccountHelper;->getGmailAccounts(Landroid/content/Context;Lcom/google/android/voicesearch/util/AccountHelper$AccountsCallback;)V

    .line 168
    :cond_0
    return-void
.end method

.method public setListener(Lcom/google/android/voicesearch/EditorDialog$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/android/voicesearch/EditorDialog;->mListener:Lcom/google/android/voicesearch/EditorDialog$Listener;

    .line 145
    return-void
.end method

.method public updateLayout()V
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/google/android/voicesearch/EditorDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/voicesearch/ui/WindowUtils;->setWindowSizeAndPosition(Landroid/view/Window;Z)V

    .line 172
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mEditor:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorDialog;->mEditor:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->hidePopup()V

    .line 175
    :cond_0
    return-void
.end method
