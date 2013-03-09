.class Leu/chainfire/supersu/SettingsFragment$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/SettingsFragment$6;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/SettingsFragment$6;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/SettingsFragment$6$1;->a:Leu/chainfire/supersu/SettingsFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Leu/chainfire/supersu/Installer;

    invoke-direct {v0}, Leu/chainfire/supersu/Installer;-><init>()V

    iget-object v1, p0, Leu/chainfire/supersu/SettingsFragment$6$1;->a:Leu/chainfire/supersu/SettingsFragment$6;

    invoke-static {v1}, Leu/chainfire/supersu/SettingsFragment$6;->a(Leu/chainfire/supersu/SettingsFragment$6;)Leu/chainfire/supersu/SettingsFragment;

    move-result-object v1

    invoke-virtual {v1}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Leu/chainfire/supersu/Installer$UninstallMode;->d:Leu/chainfire/supersu/Installer$UninstallMode;

    invoke-virtual {v0, v1, v2}, Leu/chainfire/supersu/Installer;->b(Landroid/content/Context;Leu/chainfire/supersu/Installer$UninstallMode;)V

    return-void
.end method
