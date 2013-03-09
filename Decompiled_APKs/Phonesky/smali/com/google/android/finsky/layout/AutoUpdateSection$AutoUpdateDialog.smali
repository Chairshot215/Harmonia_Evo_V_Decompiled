.class public Lcom/google/android/finsky/layout/AutoUpdateSection$AutoUpdateDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "AutoUpdateSection.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/AutoUpdateSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoUpdateDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method private setPreferences(Z)V
    .locals 2
    .parameter "autoUpdateByDefault"

    .prologue
    .line 209
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_BY_DEFAULT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 210
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->HAS_SEEN_AUTO_UPDATE_DEFAULT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 211
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/AutoUpdateSection$AutoUpdateDialog;->setPreferences(Z)V

    .line 191
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 196
    packed-switch p2, :pswitch_data_0

    .line 206
    :goto_0
    return-void

    .line 198
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AutoUpdateSection$AutoUpdateDialog;->dismiss()V

    .line 199
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/AutoUpdateSection$AutoUpdateDialog;->setPreferences(Z)V

    goto :goto_0

    .line 202
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AutoUpdateSection$AutoUpdateDialog;->dismiss()V

    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/AutoUpdateSection$AutoUpdateDialog;->setPreferences(Z)V

    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 179
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AutoUpdateSection$AutoUpdateDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 180
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f070222

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 181
    const v1, 0x7f0700da

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 182
    const v1, 0x7f0700db

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 183
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
