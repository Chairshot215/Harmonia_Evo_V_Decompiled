.class Lcom/android/settings/cardock/CarDockSettings$1;
.super Ljava/lang/Object;
.source "CarDockSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cardock/CarDockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cardock/CarDockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/cardock/CarDockSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/cardock/CarDockSettings$1;->this$0:Lcom/android/settings/cardock/CarDockSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 80
    move-object v1, p1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .local v1, listPref:Lcom/htc/preference/HtcListPreference;
    move-object v3, p2

    .line 81
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 82
    .local v0, idx:I
    invoke-virtual {v1}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 84
    .local v2, mode:I
    iget-object v3, p0, Lcom/android/settings/cardock/CarDockSettings$1;->this$0:Lcom/android/settings/cardock/CarDockSettings;

    #getter for: Lcom/android/settings/cardock/CarDockSettings;->mUiModeManager:Landroid/app/UiModeManager;
    invoke-static {v3}, Lcom/android/settings/cardock/CarDockSettings;->access$000(Lcom/android/settings/cardock/CarDockSettings;)Landroid/app/UiModeManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/UiModeManager;->setNightMode(I)V

    .line 85
    const/4 v3, 0x1

    return v3
.end method
