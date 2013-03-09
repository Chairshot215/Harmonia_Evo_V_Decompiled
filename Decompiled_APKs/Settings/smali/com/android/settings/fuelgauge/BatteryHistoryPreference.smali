.class public Lcom/android/settings/fuelgauge/BatteryHistoryPreference;
.super Lcom/htc/preference/HtcPreference;
.source "BatteryHistoryPreference.java"


# instance fields
.field private mStats:Landroid/os/BatteryStats;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/BatteryStats;)V
    .locals 1
    .parameter "context"
    .parameter "stats"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 40
    const v0, 0x7f04005e

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->setLayoutResource(I)V

    .line 41
    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mStats:Landroid/os/BatteryStats;

    .line 42
    return-void
.end method


# virtual methods
.method getStats()Landroid/os/BatteryStats;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mStats:Landroid/os/BatteryStats;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    .line 52
    const v1, 0x1010003

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;

    .line 54
    .local v0, chart:Lcom/android/settings/fuelgauge/BatteryHistoryChart;
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->setStats(Landroid/os/BatteryStats;)V

    .line 55
    return-void
.end method
