.class Lcom/htc/WifiRouter/AdvancedSettingFragment$3;
.super Ljava/lang/Object;
.source "AdvancedSettingFragment.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/WifiRouter/AdvancedSettingFragment;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/WifiRouter/AdvancedSettingFragment;


# direct methods
.method constructor <init>(Lcom/htc/WifiRouter/AdvancedSettingFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment$3;->this$0:Lcom/htc/WifiRouter/AdvancedSettingFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 170
    new-instance v0, Lcom/htc/WifiRouter/LanSettingFragment;

    invoke-direct {v0}, Lcom/htc/WifiRouter/LanSettingFragment;-><init>()V

    .line 171
    .local v0, details:Lcom/htc/WifiRouter/LanSettingFragment;
    iget-object v2, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment$3;->this$0:Lcom/htc/WifiRouter/AdvancedSettingFragment;

    invoke-virtual {v2}, Lcom/htc/WifiRouter/AdvancedSettingFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 172
    .local v1, ft:Landroid/app/FragmentTransaction;
    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 173
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 174
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 175
    const/4 v2, 0x1

    return v2
.end method
