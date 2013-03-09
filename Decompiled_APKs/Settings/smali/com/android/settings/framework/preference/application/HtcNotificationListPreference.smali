.class public final Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;
.super Lcom/htc/preference/HtcListPreference;
.source "HtcNotificationListPreference.java"


# static fields
.field private static final DEFAULT_LIST:[Ljava/lang/String; = null

.field private static final DEFAULT_VALUE:Ljava/lang/String; = "10"

.field private static final INTENT_ACTION:Ljava/lang/String; = "Settings.System.HTC_APPLICATION_NOTIFICATION"

.field public static final KEY:Ljava/lang/String; = "NOTIFICATION"

.field private static final PROPERTY_KEY:Ljava/lang/String; = "memory_threshold_list"


# instance fields
.field private mInitialized:Z

.field private mList:[Ljava/lang/String;

.field private mPreviousValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "10"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "20"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "30"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "40"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "50"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->DEFAULT_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->mInitialized:Z

    .line 62
    iput-object v1, p0, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->mList:[Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->mPreviousValue:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->mInitialized:Z

    .line 62
    iput-object v1, p0, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->mList:[Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->mPreviousValue:Ljava/lang/String;

    .line 83
    return-void
.end method

.method private getFormattedSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "value"

    .prologue
    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, format:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 109
    const-string v0, "NOTIFICATION"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->setKey(Ljava/lang/String;)V

    .line 112
    :cond_0
    const v0, 0x7f0c00ef

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->setDialogTitle(I)V

    .line 113
    const v0, 0x7f0c00ed

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->setTitle(I)V

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->setPersistent(Z)V

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->step1_loadList(Landroid/content/Context;)V

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->step2_bindData(Landroid/content/Context;)V

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->step3_bindDefaultOption(Landroid/content/Context;)V

    .line 121
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->mInitialized:Z

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->initialize(Landroid/content/Context;)V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->mInitialized:Z

    .line 99
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/preference/HtcListPreference;->onBindView(Landroid/view/View;)V

    .line 100
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 199
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 203
    if-gez p2, :cond_0

    .line 239
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v2, p0, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->mList:[Ljava/lang/String;

    aget-object v1, v2, p2

    .line 209
    .local v1, selectedValue:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 211
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->mPreviousValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 217
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "htc_application_notification"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 223
    new-instance v2, Landroid/content/Intent;

    const-string v3, "Settings.System.HTC_APPLICATION_NOTIFICATION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 226
    iput-object v1, p0, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->mPreviousValue:Ljava/lang/String;

    .line 231
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->setValue(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->getFormattedSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 238
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/htc/preference/HtcListPreference;->onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 195
    return-void
.end method

.method protected step1_loadList(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 134
    const-string v1, "memory_threshold_list"

    invoke-static {p1, v1}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, property:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->mList:[Ljava/lang/String;

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    sget-object v1, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->DEFAULT_LIST:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->mList:[Ljava/lang/String;

    goto :goto_0
.end method

.method protected step2_bindData(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 147
    iget-object v6, p0, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->mList:[Ljava/lang/String;

    array-length v3, v6

    .line 150
    .local v3, size:I
    new-array v0, v3, [Ljava/lang/String;

    .line 151
    .local v0, entries:[Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    .line 152
    .local v5, values:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c00f0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, format:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 158
    iget-object v6, p0, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->mList:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, value:Ljava/lang/String;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    .line 160
    aput-object v4, v5, v2

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    .end local v4           #value:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 166
    return-void
.end method

.method protected step3_bindDefaultOption(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_application_notification"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, defaultValue:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 179
    const-string v0, "10"

    .line 183
    :cond_0
    iput-object v0, p0, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->mPreviousValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->setValue(Ljava/lang/String;)V

    .line 186
    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->getFormattedSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 187
    return-void
.end method
