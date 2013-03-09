.class public Lcom/android/phone/CustomizeCheckBoxPreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "CustomizeCheckBoxPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method


# virtual methods
.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 48
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x78

    if-ne v0, v1, :cond_0

    .line 49
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_0
.end method
