.class public Lcom/android/settings/framework/preference/display/HtcScreenAlignmentCalibrationPreference;
.super Lcom/htc/preference/HtcPreferenceScreen;
.source "HtcScreenAlignmentCalibrationPreference.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# static fields
.field protected static final INTENT_CLASS_NAME:Ljava/lang/String; = "com.htc.android.htccalibrate.HTCCalibrate"

.field protected static final INTENT_PACKAGE_NAME:Ljava/lang/String; = "com.htc.android.htccalibrate"

.field public static final KEY:Ljava/lang/String; = "SCREEN_ALIGNMENT_CALIBRATION"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/display/HtcScreenAlignmentCalibrationPreference;->initialize(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/display/HtcScreenAlignmentCalibrationPreference;->initialize(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenAlignmentCalibrationPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 54
    const-string v1, "SCREEN_ALIGNMENT_CALIBRATION"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcScreenAlignmentCalibrationPreference;->setKey(Ljava/lang/String;)V

    .line 57
    :cond_0
    const v1, 0x7f0c0308

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcScreenAlignmentCalibrationPreference;->setTitle(I)V

    .line 58
    const v1, 0x7f0c0309

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcScreenAlignmentCalibrationPreference;->setSummary(I)V

    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 61
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.android.htccalibrate"

    const-string v2, "com.htc.android.htccalibrate.HTCCalibrate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcScreenAlignmentCalibrationPreference;->setIntent(Landroid/content/Intent;)V

    .line 63
    invoke-virtual {p0, p0}, Lcom/android/settings/framework/preference/display/HtcScreenAlignmentCalibrationPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 64
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    .line 68
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenAlignmentCalibrationPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenAlignmentCalibrationPreference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return v3

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenAlignmentCalibrationPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0064

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
