.class public Lcom/google/android/finsky/activities/FilterOptionsDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "FilterOptionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/FilterOptionsDialog$Listener;
    }
.end annotation


# instance fields
.field private final mChecked:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/finsky/activities/FilterOptionsDialog;->mChecked:[Z

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/FilterOptionsDialog;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/finsky/activities/FilterOptionsDialog;->mChecked:[Z

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/FilterOptionsDialog;)Lcom/google/android/finsky/activities/FilterOptionsDialog$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/android/finsky/activities/FilterOptionsDialog;->getListener()Lcom/google/android/finsky/activities/FilterOptionsDialog$Listener;

    move-result-object v0

    return-object v0
.end method

.method private getListener()Lcom/google/android/finsky/activities/FilterOptionsDialog$Listener;
    .locals 3

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FilterOptionsDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 86
    .local v1, f:Landroid/support/v4/app/Fragment;
    instance-of v2, v1, Lcom/google/android/finsky/activities/FilterOptionsDialog$Listener;

    if-eqz v2, :cond_0

    .line 87
    check-cast v1, Lcom/google/android/finsky/activities/FilterOptionsDialog$Listener;

    .line 93
    .end local v1           #f:Landroid/support/v4/app/Fragment;
    :goto_0
    return-object v1

    .line 89
    .restart local v1       #f:Landroid/support/v4/app/Fragment;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FilterOptionsDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 90
    .local v0, a:Landroid/app/Activity;
    instance-of v2, v0, Lcom/google/android/finsky/activities/FilterOptionsDialog$Listener;

    if-eqz v2, :cond_1

    .line 91
    check-cast v0, Lcom/google/android/finsky/activities/FilterOptionsDialog$Listener;

    .end local v0           #a:Landroid/app/Activity;
    move-object v1, v0

    goto :goto_0

    .line 93
    .restart local v0       #a:Landroid/app/Activity;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newInstance(ZZ)Lcom/google/android/finsky/activities/FilterOptionsDialog;
    .locals 3
    .parameter "filterByVersion"
    .parameter "filterByDevice"

    .prologue
    .line 32
    new-instance v1, Lcom/google/android/finsky/activities/FilterOptionsDialog;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/FilterOptionsDialog;-><init>()V

    .line 33
    .local v1, filterOptionsDialog:Lcom/google/android/finsky/activities/FilterOptionsDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    .local v0, arguments:Landroid/os/Bundle;
    const-string v2, "filterByVersion"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 35
    const-string v2, "filterByDevice"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/FilterOptionsDialog;->setArguments(Landroid/os/Bundle;)V

    .line 37
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FilterOptionsDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 43
    .local v2, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FilterOptionsDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 44
    .local v0, arguments:Landroid/os/Bundle;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 45
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f07015f

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 46
    iget-object v4, p0, Lcom/google/android/finsky/activities/FilterOptionsDialog;->mChecked:[Z

    array-length v4, v4

    new-array v3, v4, [Ljava/lang/String;

    .line 47
    .local v3, filters:[Ljava/lang/String;
    const v4, 0x7f070161

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 48
    const v4, 0x7f070160

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 49
    iget-object v4, p0, Lcom/google/android/finsky/activities/FilterOptionsDialog;->mChecked:[Z

    const-string v5, "filterByVersion"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    aput-boolean v5, v4, v6

    .line 50
    iget-object v4, p0, Lcom/google/android/finsky/activities/FilterOptionsDialog;->mChecked:[Z

    const-string v5, "filterByDevice"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    aput-boolean v5, v4, v7

    .line 51
    iget-object v4, p0, Lcom/google/android/finsky/activities/FilterOptionsDialog;->mChecked:[Z

    new-instance v5, Lcom/google/android/finsky/activities/FilterOptionsDialog$1;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/activities/FilterOptionsDialog$1;-><init>(Lcom/google/android/finsky/activities/FilterOptionsDialog;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 57
    const v4, 0x104000a

    new-instance v5, Lcom/google/android/finsky/activities/FilterOptionsDialog$2;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/activities/FilterOptionsDialog$2;-><init>(Lcom/google/android/finsky/activities/FilterOptionsDialog;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 67
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method
