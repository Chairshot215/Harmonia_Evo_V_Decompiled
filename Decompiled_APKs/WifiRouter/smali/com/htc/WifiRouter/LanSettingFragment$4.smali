.class Lcom/htc/WifiRouter/LanSettingFragment$4;
.super Ljava/lang/Object;
.source "LanSettingFragment.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/WifiRouter/LanSettingFragment;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/WifiRouter/LanSettingFragment;


# direct methods
.method constructor <init>(Lcom/htc/WifiRouter/LanSettingFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/htc/WifiRouter/LanSettingFragment$4;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/htc/WifiRouter/LanSettingFragment$4;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    #calls: Lcom/htc/WifiRouter/LanSettingFragment;->showResetDefaultDialog()V
    invoke-static {v0}, Lcom/htc/WifiRouter/LanSettingFragment;->access$900(Lcom/htc/WifiRouter/LanSettingFragment;)V

    .line 274
    const/4 v0, 0x1

    return v0
.end method
