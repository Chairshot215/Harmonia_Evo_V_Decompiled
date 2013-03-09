.class public final Lcom/android/settings/framework/preference/personalize/tmo/TmoRosiePagesPreference;
.super Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;
.source "TmoRosiePagesPreference.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# static fields
.field private static final DATABASE_KEY:Ljava/lang/String; = null

.field private static final INTENT_ACTION:Ljava/lang/String; = "com.htc.launcher.action.INCREASE_PAGE"

.field private static final KEY:Ljava/lang/String; = "ROSIE_PAGES"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/android/settings/framework/preference/personalize/tmo/TmoRosiePagesPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/personalize/tmo/TmoRosiePagesPreference;->DATABASE_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/preference/personalize/tmo/TmoRosiePagesPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/framework/preference/personalize/tmo/TmoRosiePagesPreference;->handleClickEvent()V

    return-void
.end method

.method private handleClickEvent()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 173
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/personalize/tmo/TmoRosiePagesPreference;->setChecked(Z)V

    .line 174
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/personalize/tmo/TmoRosiePagesPreference;->setEnabled(Z)V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/personalize/tmo/TmoRosiePagesPreference;->dispatchSetValueMessage()V

    .line 177
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 178
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.launcher.action.INCREASE_PAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/personalize/tmo/TmoRosiePagesPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/personalize/tmo/TmoRosiePagesPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0492

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 185
    return-void
.end method


# virtual methods
.method protected getCustomDatabaseDefaultValue()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method protected getCustomDatabaseKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/android/settings/framework/preference/personalize/tmo/TmoRosiePagesPreference;->DATABASE_KEY:Ljava/lang/String;

    return-object v0
.end method

.method protected getCustomDatabaseTable()Lcom/android/settings/framework/database/HtcDatabaseTable;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/android/settings/framework/database/HtcDatabaseTable;->SYSTEM:Lcom/android/settings/framework/database/HtcDatabaseTable;

    return-object v0
.end method

.method protected getCustomIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/personalize/tmo/TmoRosiePagesPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const-string v0, "ROSIE_PAGES"

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/personalize/tmo/TmoRosiePagesPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c048d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/personalize/tmo/TmoRosiePagesPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c048c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initialize(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->initialize(Landroid/content/Context;)V

    .line 98
    invoke-virtual {p0, p0}, Lcom/android/settings/framework/preference/personalize/tmo/TmoRosiePagesPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 99
    return-void
.end method

.method protected onHandledGetValueMessage(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 167
    if-eqz p1, :cond_0

    .line 168
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/personalize/tmo/TmoRosiePagesPreference;->setEnabled(Z)V

    .line 170
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 143
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/personalize/tmo/TmoRosiePagesPreference;->getContext()Landroid/content/Context;

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

    new-instance v2, Lcom/android/settings/framework/preference/personalize/tmo/TmoRosiePagesPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/framework/preference/personalize/tmo/TmoRosiePagesPreference$1;-><init>(Lcom/android/settings/framework/preference/personalize/tmo/TmoRosiePagesPreference;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0491

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 162
    const/4 v0, 0x0

    return v0
.end method
