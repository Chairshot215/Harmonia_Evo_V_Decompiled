.class public Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;
.super Lcom/htc/preference/HtcListPreference;
.source "HtcAppStorageLocationPreference.java"


# static fields
.field public static final ACTION_APP_STORAGE_LOCATION_CHANGED:Ljava/lang/String; = "com.htc.intent.action.APP_STORAGE_LOCATION_CHANGED"

.field public static final EXTRA_PACKAGE:Ljava/lang/String; = "com.htc.intent.extra.package"

.field public static final KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static sHTC_PREFIX_APP_STORAGE_LOCATION:Ljava/lang/String;


# instance fields
.field private mDatabaseKey:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->TAG:Ljava/lang/String;

    .line 35
    const-class v0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "packageName"
    .parameter "title"

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->mDatabaseKey:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->mPackageName:Ljava/lang/String;

    .line 66
    invoke-virtual {p0, p3, p4}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->initialize(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "packageName"
    .parameter "title"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 196
    return-void
.end method

.method private notifyAppToSyncValue()V
    .locals 3

    .prologue
    .line 187
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.APP_STORAGE_LOCATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.intent.extra.package"

    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 190
    return-void
.end method


# virtual methods
.method protected initialize(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "packageName"
    .parameter "title"

    .prologue
    const/4 v7, 0x0

    .line 75
    sget-object v4, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->sHTC_PREFIX_APP_STORAGE_LOCATION:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 76
    sget-object v4, Lcom/android/settings/framework/database/HtcDatabaseTable;->SYSTEM:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v5, "HTC_PREFIX_APP_STORAGE_LOCATION"

    const-string v6, "htc_app_storage_loc_"

    invoke-static {v4, v5, v6}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->sHTC_PREFIX_APP_STORAGE_LOCATION:Ljava/lang/String;

    .line 83
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p0, p2}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 85
    iput-object p1, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->mPackageName:Ljava/lang/String;

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->sHTC_PREFIX_APP_STORAGE_LOCATION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->mDatabaseKey:Ljava/lang/String;

    .line 90
    invoke-virtual {p0, v7}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->setPersistent(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070075

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 95
    .local v2, storageList:[Ljava/lang/CharSequence;
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 100
    array-length v1, v2

    .line 101
    .local v1, len:I
    new-array v3, v1, [Ljava/lang/String;

    .line 102
    .local v3, values:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 103
    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->mDatabaseKey:Ljava/lang/String;

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->setValue(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 113
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 123
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 125
    if-gez p2, :cond_0

    .line 155
    :goto_0
    return-void

    .line 132
    :cond_0
    add-int/lit8 v1, p2, 0x1

    .line 134
    .local v1, value:I
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->mDatabaseKey:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 140
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, selectedValue:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->setValue(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 147
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->notifyAppToSyncValue()V

    .line 149
    const-string v2, "onClick(...)"

    invoke-direct {p0, v2}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->Log(Ljava/lang/String;)V

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t which: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->Log(Ljava/lang/String;)V

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t selectedValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->Log(Ljava/lang/String;)V

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t setSummary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->Log(Ljava/lang/String;)V

    .line 154
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/htc/preference/HtcListPreference;->onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 119
    return-void
.end method
