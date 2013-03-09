.class public final Lcom/android/settings/framework/preference/personalize/HtcRosiePagesPreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "HtcRosiePagesPreference.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# static fields
.field private static final INTENT_ACTION:Ljava/lang/String; = "com.htc.launcher.action.INCREASE_PAGE"

.field private static final KEY:Ljava/lang/String; = "ROSIE_PAGES"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/personalize/HtcRosiePagesPreference;->initialize()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/personalize/HtcRosiePagesPreference;->initialize()V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/personalize/HtcRosiePagesPreference;->initialize()V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/preference/personalize/HtcRosiePagesPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/framework/preference/personalize/HtcRosiePagesPreference;->handleClickEvent()V

    return-void
.end method

.method private disablePreference()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 199
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/personalize/HtcRosiePagesPreference;->setSelectable(Z)V

    .line 200
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/personalize/HtcRosiePagesPreference;->setEnabled(Z)V

    .line 201
    return-void
.end method

.method private handleClickEvent()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 185
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/personalize/HtcRosiePagesPreference;->setChecked(Z)V

    .line 186
    invoke-direct {p0}, Lcom/android/settings/framework/preference/personalize/HtcRosiePagesPreference;->disablePreference()V

    .line 188
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 189
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.launcher.action.INCREASE_PAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/personalize/HtcRosiePagesPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/personalize/HtcRosiePagesPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0492

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 196
    return-void
.end method


# virtual methods
.method public addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z
    .locals 1
    .parameter "parent"

    .prologue
    .line 135
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isE0001:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p1, p0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 137
    const/4 v0, 0x1

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addToParent(Lcom/htc/preference/HtcPreferenceScreen;I)Z
    .locals 1
    .parameter "parent"
    .parameter "order"

    .prologue
    .line 156
    invoke-virtual {p0, p2}, Lcom/android/settings/framework/preference/personalize/HtcRosiePagesPreference;->setOrder(I)V

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/personalize/HtcRosiePagesPreference;->addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z

    move-result v0

    return v0
.end method

.method protected initialize()V
    .locals 1

    .prologue
    .line 90
    const-string v0, "ROSIE_PAGES"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/personalize/HtcRosiePagesPreference;->setKey(Ljava/lang/String;)V

    .line 91
    const v0, 0x7f0c048c

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/personalize/HtcRosiePagesPreference;->setTitle(I)V

    .line 92
    const v0, 0x7f0c048d

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/personalize/HtcRosiePagesPreference;->setSummary(I)V

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/personalize/HtcRosiePagesPreference;->setPersistent(Z)V

    .line 100
    invoke-virtual {p0, p0}, Lcom/android/settings/framework/preference/personalize/HtcRosiePagesPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 106
    return-void
.end method

.method protected onAttachedToHierarchy(Lcom/htc/preference/HtcPreferenceManager;)V
    .locals 1
    .parameter "preferenceManager"

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->onAttachedToHierarchy(Lcom/htc/preference/HtcPreferenceManager;)V

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/personalize/HtcRosiePagesPreference;->getPersistedBoolean(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/android/settings/framework/preference/personalize/HtcRosiePagesPreference;->disablePreference()V

    .line 121
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 163
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/personalize/HtcRosiePagesPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c048e

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c048f

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0490

    new-instance v2, Lcom/android/settings/framework/preference/personalize/HtcRosiePagesPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/framework/preference/personalize/HtcRosiePagesPreference$1;-><init>(Lcom/android/settings/framework/preference/personalize/HtcRosiePagesPreference;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0491

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 181
    const/4 v0, 0x0

    return v0
.end method
