.class public final Lcom/htc/dockmode/preference/HtcAutoLaunchPreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "HtcAutoLaunchPreference.java"


# static fields
.field private static final DEFAULT_VALUE:I = 0x1

.field private static final DESKDOCK_AUTO_LAUNCH:Ljava/lang/String; = "deskdock_auto_launch"

.field public static final KEY:Ljava/lang/String; = "AUTO_LAUNCH"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/htc/dockmode/preference/HtcAutoLaunchPreference;->initialize(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0, p1}, Lcom/htc/dockmode/preference/HtcAutoLaunchPreference;->initialize(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    invoke-direct {p0, p1}, Lcom/htc/dockmode/preference/HtcAutoLaunchPreference;->initialize(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 60
    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcAutoLaunchPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 61
    const-string v4, "AUTO_LAUNCH"

    invoke-virtual {p0, v4}, Lcom/htc/dockmode/preference/HtcAutoLaunchPreference;->setKey(Ljava/lang/String;)V

    .line 63
    :cond_0
    const v4, 0x7f080026

    invoke-virtual {p0, v4}, Lcom/htc/dockmode/preference/HtcAutoLaunchPreference;->setTitle(I)V

    .line 64
    const v4, 0x7f080027

    invoke-virtual {p0, v4}, Lcom/htc/dockmode/preference/HtcAutoLaunchPreference;->setSummary(I)V

    .line 67
    invoke-virtual {p0, v3}, Lcom/htc/dockmode/preference/HtcAutoLaunchPreference;->setPersistent(Z)V

    .line 70
    const/4 v1, 0x0

    .line 71
    .local v1, value:Z
    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcAutoLaunchPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "deskdock_auto_launch"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 73
    .local v0, result:I
    if-ne v0, v2, :cond_1

    move v1, v2

    .line 74
    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/dockmode/preference/HtcAutoLaunchPreference;->setChecked(Z)V

    .line 75
    return-void

    :cond_1
    move v1, v3

    .line 73
    goto :goto_0
.end method


# virtual methods
.method protected onClick()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 79
    invoke-super {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->onClick()V

    .line 80
    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcAutoLaunchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "deskdock_auto_launch"

    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcAutoLaunchPreference;->isChecked()Z

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 82
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
