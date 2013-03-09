.class Leu/chainfire/supersu/SettingsFragment$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/SettingsFragment;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/SettingsFragment$8;->a:Leu/chainfire/supersu/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/SettingsFragment$8;)Leu/chainfire/supersu/SettingsFragment;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment$8;->a:Leu/chainfire/supersu/SettingsFragment;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Leu/chainfire/supersu/SettingsFragment$8;->a:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v1}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0a0043

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :goto_0
    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09000b

    new-instance v2, Leu/chainfire/supersu/SettingsFragment$8$1;

    invoke-direct {v2, p0}, Leu/chainfire/supersu/SettingsFragment$8$1;-><init>(Leu/chainfire/supersu/SettingsFragment$8;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090005

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Leu/chainfire/supersu/SettingsFragment$8;->a:Leu/chainfire/supersu/SettingsFragment;

    invoke-virtual {v1}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
