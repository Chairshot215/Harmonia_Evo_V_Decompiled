.class public Lcom/google/android/talk/ActivityUtils;
.super Ljava/lang/Object;
.source "ActivityUtils.java"


# static fields
.field static sSmallestWidth:I

.field static sTabletMode:Z

.field static sTabletModeDetermined:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismissPopupNotification(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.talk.CANCEL_POPUP_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 102
    return-void
.end method

.method public static isAudioChatCapable(I)Z
    .locals 1
    .parameter "capabilities"

    .prologue
    .line 59
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->audioChatEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 5
    .parameter "ctx"

    .prologue
    const/4 v4, 0x1

    .line 78
    sget-boolean v2, Lcom/google/android/talk/ActivityUtils;->sTabletModeDetermined:Z

    if-nez v2, :cond_1

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 80
    .local v1, cfg:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    sput v2, Lcom/google/android/talk/ActivityUtils;->sSmallestWidth:I

    .line 82
    const/16 v0, 0x258

    .line 83
    .local v0, TABLET_PERSONALITY_MINIMUM_SCREEN_WIDTH_DIPS:I
    sget v2, Lcom/google/android/talk/ActivityUtils;->sSmallestWidth:I

    const/16 v3, 0x258

    if-lt v2, v3, :cond_0

    .line 84
    sput-boolean v4, Lcom/google/android/talk/ActivityUtils;->sTabletMode:Z

    .line 86
    :cond_0
    sput-boolean v4, Lcom/google/android/talk/ActivityUtils;->sTabletModeDetermined:Z

    .line 88
    .end local v0           #TABLET_PERSONALITY_MINIMUM_SCREEN_WIDTH_DIPS:I
    .end local v1           #cfg:Landroid/content/res/Configuration;
    :cond_1
    sget-boolean v2, Lcom/google/android/talk/ActivityUtils;->sTabletMode:Z

    return v2
.end method

.method public static isVideoChatCapable(I)Z
    .locals 1
    .parameter "capabilities"

    .prologue
    .line 53
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->videoChatEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_0

    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isXLargeTabletWidth(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 94
    .local v0, cfg:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v2, 0x4b0

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static showLandingPage(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 50
    return-void
.end method
