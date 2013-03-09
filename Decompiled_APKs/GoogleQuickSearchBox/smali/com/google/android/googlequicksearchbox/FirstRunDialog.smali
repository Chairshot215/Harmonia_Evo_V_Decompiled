.class public Lcom/google/android/googlequicksearchbox/FirstRunDialog;
.super Landroid/app/AlertDialog;
.source "FirstRunDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/FirstRunDialog$CancelButtonListener;,
        Lcom/google/android/googlequicksearchbox/FirstRunDialog$OkButtonListener;
    }
.end annotation


# instance fields
.field private mAgreeUseLocation:Landroid/widget/CheckBox;

.field private final mContext:Lcom/google/android/googlequicksearchbox/QsbContext;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-direct {v0, p1}, Lcom/google/android/googlequicksearchbox/QsbContext;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/FirstRunDialog;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    .line 45
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/googlequicksearchbox/FirstRunDialog;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/FirstRunDialog;->mAgreeUseLocation:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/googlequicksearchbox/FirstRunDialog;)Lcom/google/android/googlequicksearchbox/SearchSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/FirstRunDialog;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v0

    return-object v0
.end method

.method private getLocationSettings()Lcom/google/android/googlequicksearchbox/google/LocationSettings;
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/FirstRunDialog;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLocationOptIn()Lcom/google/android/googlequicksearchbox/google/LocationSettings;

    move-result-object v0

    return-object v0
.end method

.method private getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/FirstRunDialog;->getQsbContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbContext;->getApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    return-object v0
.end method

.method private getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/FirstRunDialog;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v0

    return-object v0
.end method

.method private getString(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "res"

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/FirstRunDialog;->getQsbContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/QsbContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTosText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/FirstRunDialog;->getQsbContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v0

    const v1, 0x7f0b001d

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/QsbContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getQsbContext()Lcom/google/android/googlequicksearchbox/QsbContext;
    .locals 1

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/FirstRunDialog;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 49
    const v3, 0x7f0b001a

    invoke-virtual {p0, v3}, Lcom/google/android/googlequicksearchbox/FirstRunDialog;->setTitle(I)V

    .line 50
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/FirstRunDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040001

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/googlequicksearchbox/FirstRunDialog;->setView(Landroid/view/View;)V

    .line 51
    const/4 v3, -0x1

    const v4, 0x104000a

    invoke-direct {p0, v4}, Lcom/google/android/googlequicksearchbox/FirstRunDialog;->getString(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/google/android/googlequicksearchbox/FirstRunDialog$OkButtonListener;

    invoke-direct {v5, p0, v6}, Lcom/google/android/googlequicksearchbox/FirstRunDialog$OkButtonListener;-><init>(Lcom/google/android/googlequicksearchbox/FirstRunDialog;Lcom/google/android/googlequicksearchbox/FirstRunDialog$1;)V

    invoke-virtual {p0, v3, v4, v5}, Lcom/google/android/googlequicksearchbox/FirstRunDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 52
    const/4 v3, -0x2

    const/high16 v4, 0x104

    invoke-direct {p0, v4}, Lcom/google/android/googlequicksearchbox/FirstRunDialog;->getString(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/google/android/googlequicksearchbox/FirstRunDialog$CancelButtonListener;

    invoke-direct {v5, p0, v6}, Lcom/google/android/googlequicksearchbox/FirstRunDialog$CancelButtonListener;-><init>(Lcom/google/android/googlequicksearchbox/FirstRunDialog;Lcom/google/android/googlequicksearchbox/FirstRunDialog$1;)V

    invoke-virtual {p0, v3, v4, v5}, Lcom/google/android/googlequicksearchbox/FirstRunDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 54
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const/high16 v3, 0x7f10

    invoke-virtual {p0, v3}, Lcom/google/android/googlequicksearchbox/FirstRunDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 57
    .local v1, tos:Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/FirstRunDialog;->getTosText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const v3, 0x7f100001

    invoke-virtual {p0, v3}, Lcom/google/android/googlequicksearchbox/FirstRunDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 60
    .local v2, tosButton:Landroid/widget/Button;
    new-instance v3, Lcom/google/android/googlequicksearchbox/FirstRunDialog$1;

    invoke-direct {v3, p0}, Lcom/google/android/googlequicksearchbox/FirstRunDialog$1;-><init>(Lcom/google/android/googlequicksearchbox/FirstRunDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v3, 0x7f100002

    invoke-virtual {p0, v3}, Lcom/google/android/googlequicksearchbox/FirstRunDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/google/android/googlequicksearchbox/FirstRunDialog;->mAgreeUseLocation:Landroid/widget/CheckBox;

    .line 72
    const/4 v0, 0x1

    .line 73
    .local v0, defaultUseLocation:Z
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/FirstRunDialog;->getLocationSettings()Lcom/google/android/googlequicksearchbox/google/LocationSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/googlequicksearchbox/google/LocationSettings;->isUseLocationSet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/FirstRunDialog;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/google/android/googlequicksearchbox/SearchSettings;->shouldSendLocation(Z)Z

    move-result v0

    .line 76
    :cond_0
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/FirstRunDialog;->mAgreeUseLocation:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 77
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 87
    return-void
.end method
