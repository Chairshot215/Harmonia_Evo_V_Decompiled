.class public Lcom/android/browser/preferences/AccessibilityPreferencesFragment;
.super Landroid/preference/PreferenceFragment;
.source "AccessibilityPreferencesFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field mControlWebView:Landroid/webkit/WebView;

.field mFormat:Ljava/text/NumberFormat;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    new-instance v2, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->mControlWebView:Landroid/webkit/WebView;

    .line 42
    const/high16 v2, 0x7f06

    invoke-virtual {p0, v2}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->addPreferencesFromResource(I)V

    .line 43
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    .line 44
    .local v1, settings:Lcom/android/browser/BrowserSettings;
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->mFormat:Ljava/text/NumberFormat;

    .line 46
    const-string v2, "min_font_size"

    invoke-virtual {p0, v2}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 47
    .local v0, e:Landroid/preference/Preference;
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 48
    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getMinimumFontSize()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->updateMinFontSummary(Landroid/preference/Preference;I)V

    .line 49
    const-string v2, "text_zoom"

    invoke-virtual {p0, v2}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 50
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 51
    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getTextZoom()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->updateTextZoomSummary(Landroid/preference/Preference;I)V

    .line 52
    const-string v2, "double_tap_zoom"

    invoke-virtual {p0, v2}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 54
    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getDoubleTapZoom()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->updateDoubleTapZoomSummary(Landroid/preference/Preference;I)V

    .line 55
    const-string v2, "inverted_contrast"

    invoke-virtual {p0, v2}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 56
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 57
    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getInvertedContrast()F

    move-result v2

    const/high16 v3, 0x42c8

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v0, v2}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->updateInvertedContrastSummary(Landroid/preference/Preference;I)V

    .line 58
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 75
    iget-object v0, p0, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->mControlWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->mControlWebView:Landroid/webkit/WebView;

    .line 77
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 69
    iget-object v0, p0, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->mControlWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V

    .line 70
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "pref"
    .parameter "objValue"

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 101
    const/4 v1, 0x0

    .line 122
    .end local p2
    :goto_0
    return v1

    .line 104
    .restart local p2
    :cond_0
    const-string v1, "min_font_size"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p2

    .line 105
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->getAdjustedMinimumFontSize(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->updateMinFontSummary(Landroid/preference/Preference;I)V

    .line 108
    :cond_1
    const-string v1, "text_zoom"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    .local v0, settings:Lcom/android/browser/BrowserSettings;
    move-object v1, p2

    .line 110
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserSettings;->getAdjustedTextZoom(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->updateTextZoomSummary(Landroid/preference/Preference;I)V

    .line 113
    .end local v0           #settings:Lcom/android/browser/BrowserSettings;
    :cond_2
    const-string v1, "double_tap_zoom"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    .restart local v0       #settings:Lcom/android/browser/BrowserSettings;
    move-object v1, p2

    .line 115
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserSettings;->getAdjustedDoubleTapZoom(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->updateDoubleTapZoomSummary(Landroid/preference/Preference;I)V

    .line 118
    .end local v0           #settings:Lcom/android/browser/BrowserSettings;
    :cond_3
    const-string v1, "inverted_contrast"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 119
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0xa

    invoke-virtual {p0, p1, v1}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->updateInvertedContrastSummary(Landroid/preference/Preference;I)V

    .line 122
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 63
    iget-object v0, p0, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->mControlWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    .line 64
    return-void
.end method

.method updateDoubleTapZoomSummary(Landroid/preference/Preference;I)V
    .locals 5
    .parameter "pref"
    .parameter "doubleTapZoom"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->mFormat:Ljava/text/NumberFormat;

    int-to-double v1, p2

    const-wide/high16 v3, 0x4059

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 90
    return-void
.end method

.method updateInvertedContrastSummary(Landroid/preference/Preference;I)V
    .locals 5
    .parameter "pref"
    .parameter "contrast"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->mFormat:Ljava/text/NumberFormat;

    int-to-double v1, p2

    const-wide/high16 v3, 0x4059

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method

.method updateMinFontSummary(Landroid/preference/Preference;I)V
    .locals 5
    .parameter "pref"
    .parameter "minFontSize"

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 81
    .local v0, c:Landroid/content/Context;
    const v1, 0x7f0c00c1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method

.method updateTextZoomSummary(Landroid/preference/Preference;I)V
    .locals 5
    .parameter "pref"
    .parameter "textZoom"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/browser/preferences/AccessibilityPreferencesFragment;->mFormat:Ljava/text/NumberFormat;

    int-to-double v1, p2

    const-wide/high16 v3, 0x4059

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 86
    return-void
.end method
