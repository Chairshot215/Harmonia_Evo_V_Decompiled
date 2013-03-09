.class public Lcom/android/systemui/statusbar/DoNotDisturb;
.super Ljava/lang/Object;
.source "DoNotDisturb.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDoNotDisturb:Z

.field mPrefs:Landroid/content/SharedPreferences;

.field private mStatusBar:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mStatusBar:Landroid/app/StatusBarManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/Prefs;->read(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "do_not_disturb"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDoNotDisturb:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/DoNotDisturb;->updateDisableRecord()V

    return-void
.end method

.method private updateDisableRecord()V
    .locals 3

    const/high16 v0, 0xe

    iget-object v2, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mStatusBar:Landroid/app/StatusBarManager;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDoNotDisturb:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0xe

    :goto_0
    invoke-virtual {v2, v1}, Landroid/app/StatusBarManager;->disable(I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    const-string v1, "do_not_disturb"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDoNotDisturb:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDoNotDisturb:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/DoNotDisturb;->updateDisableRecord()V

    :cond_0
    return-void
.end method
