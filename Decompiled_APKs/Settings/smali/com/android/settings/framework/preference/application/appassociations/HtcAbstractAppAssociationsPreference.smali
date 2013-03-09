.class public abstract Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;
.super Lcom/htc/preference/HtcListPreference;
.source "HtcAbstractAppAssociationsPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;


# static fields
.field private static final MESSAGE_ON_SET_ASSOCIATION_APP:I = 0x1

.field private static final MESSAGE_ON_SET_SUMMARY:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppEntries:[Ljava/lang/String;

.field private mAppEntries2:[Ljava/lang/String;

.field private mAppEntryValues:[Ljava/lang/String;

.field private mAppIconResIds:[Landroid/graphics/drawable/Drawable;

.field private mAppNames:[Ljava/lang/String;

.field private mClickedDialogEntryIndex:I

.field private mComponentNames:[Ljava/lang/String;

.field private mContext:Lcom/htc/preference/HtcPreferenceActivity;

.field private mNonUIHandler:Landroid/os/Handler;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mParentPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;)V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mParentPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    .line 94
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->initialize(Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mParentPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    .line 105
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->initialize(Landroid/content/Context;)V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;)Lcom/htc/preference/HtcPreferenceActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mContext:Lcom/htc/preference/HtcPreferenceActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;)[Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppIconResIds:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries2:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getValueIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mClickedDialogEntryIndex:I

    return p1
.end method

.method private getAssoAppFromPackageManager()V
    .locals 11

    .prologue
    .line 298
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mPackageMapping:Ljava/util/Map;

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getActivityList()Ljava/util/List;

    move-result-object v2

    .line 302
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v2, :cond_0

    .line 303
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries:[Ljava/lang/String;

    .line 307
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries2:[Ljava/lang/String;

    .line 308
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntryValues:[Ljava/lang/String;

    .line 309
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    iput-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppIconResIds:[Landroid/graphics/drawable/Drawable;

    .line 310
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppNames:[Ljava/lang/String;

    .line 311
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mComponentNames:[Ljava/lang/String;

    .line 313
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .local v4, size:I
    :goto_0
    if-ge v1, v4, :cond_5

    .line 314
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 316
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v7, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v7, v1

    .line 318
    iget-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries:[Ljava/lang/String;

    aget-object v6, v6, v1

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 319
    :cond_1
    iget-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries:[Ljava/lang/String;

    const-string v7, ""

    aput-object v7, v6, v1

    .line 322
    :cond_2
    iget-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntryValues:[Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    aput-object v7, v6, v1

    .line 324
    iget-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 329
    .local v5, tempApplocationLabel:Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 330
    :cond_3
    iget-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries2:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntryValues:[Ljava/lang/String;

    aget-object v8, v8, v1

    iget-object v9, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntryValues:[Ljava/lang/String;

    aget-object v9, v9, v1

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 340
    :goto_1
    iget-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppNames:[Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v7, v6, v1

    .line 341
    iget-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppIconResIds:[Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v6, v1

    .line 342
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .local v0, component:Landroid/content/ComponentName;
    iget-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mComponentNames:[Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 345
    iget-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mPackageMapping:Ljava/util/Map;

    iget-object v7, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mComponentNames:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 335
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_4
    iget-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries2:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    goto :goto_1

    .line 347
    .end local v3           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v5           #tempApplocationLabel:Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private getValueIndex()I
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private final initialize(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 118
    check-cast p1, Lcom/htc/preference/HtcPreferenceActivity;

    .end local p1
    iput-object p1, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mContext:Lcom/htc/preference/HtcPreferenceActivity;

    .line 119
    iget-object v2, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mContext:Lcom/htc/preference/HtcPreferenceActivity;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getCustomKey()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, text:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setKey(Ljava/lang/String;)V

    .line 131
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getCustomIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 132
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v1

    .line 138
    .restart local v1       #text:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 139
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 143
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getCustomSummary()Ljava/lang/String;

    move-result-object v1

    .line 144
    if-eqz v1, :cond_3

    .line 145
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 151
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setPersistent(Z)V

    .line 152
    return-void
.end method

.method private removeThisPreference()V
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mParentPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mParentPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 514
    :cond_0
    return-void
.end method

.method private setCurrentAppPreferActivity()V
    .locals 6

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getPreferenceActivityPackage()Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, mCurrentPreferPackage:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 260
    const-string v2, ""

    .line 263
    :cond_0
    iget-object v3, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mPackageMapping:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 264
    iget-object v3, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mPackageMapping:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setValueIndex(I)V

    .line 292
    :cond_1
    :goto_0
    return-void

    .line 267
    :cond_2
    sget-object v3, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package doesn\'t exist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->isHidePreference()Z

    move-result v3

    if-nez v3, :cond_1

    .line 278
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setValueIndex(I)V

    .line 281
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntryValues:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getValueIndex()I

    move-result v4

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppNames:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getValueIndex()I

    move-result v5

    aget-object v4, v4, v5

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .local v0, component:Landroid/content/ComponentName;
    sget-object v3, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "component:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setPreferredActivity(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    .end local v0           #component:Landroid/content/ComponentName;
    :catch_0
    move-exception v1

    .line 285
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->TAG:Ljava/lang/String;

    const-string v4, " ERROR: set default app fail!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    sget-object v3, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private syncSummary()V
    .locals 7

    .prologue
    .line 227
    const-string v1, ""

    .line 229
    .local v1, summary:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getValueIndex()I

    move-result v3

    if-ltz v3, :cond_1

    .line 230
    invoke-direct {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getValueIndex()I

    move-result v0

    .line 231
    .local v0, i:I
    iget-object v3, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries2:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries2:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries2:[Ljava/lang/String;

    aget-object v5, v5, v0

    const-string v6, ") - "

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, tempAppName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 235
    :cond_0
    move-object v1, v2

    .line 246
    .end local v0           #i:I
    .end local v2           #tempAppName:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mUIHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    new-instance v5, Lcom/android/settings/framework/os/HtcMessageParcel;

    invoke-direct {v5, p0, v1}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 251
    return-void

    .line 238
    .restart local v0       #i:I
    .restart local v2       #tempAppName:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 239
    iget-object v3, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries:[Ljava/lang/String;

    aget-object v1, v3, v0

    goto :goto_0

    .line 242
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method protected abstract getActivityList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method protected getCustomIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getCustomSummary()Ljava/lang/String;
.end method

.method protected abstract getCustomTitle()Ljava/lang/String;
.end method

.method protected abstract getInfoTypeName()Ljava/lang/String;
.end method

.method protected abstract getPreferenceActivityPackage()Ljava/lang/String;
.end method

.method public isHidePreference()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 215
    invoke-super {p0, p1}, Lcom/htc/preference/HtcListPreference;->onBindView(Landroid/view/View;)V

    .line 216
    return-void
.end method

.method protected onClick()V
    .locals 4

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mNonUIHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    const-string v3, ""

    invoke-direct {v2, p0, v3}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 474
    iget-object v0, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppNames:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 475
    invoke-super {p0}, Lcom/htc/preference/HtcListPreference;->onClick()V

    .line 477
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 481
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 483
    if-gez p2, :cond_0

    .line 493
    :goto_0
    return-void

    .line 488
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setValueIndex(I)V

    .line 489
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntryValues:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getValueIndex()I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppNames:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getValueIndex()I

    move-result v3

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    .local v0, component:Landroid/content/ComponentName;
    sget-object v1, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "component:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setPreferredActivity(Landroid/content/ComponentName;)V

    .line 492
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 444
    invoke-super {p0, p1}, Lcom/htc/preference/HtcListPreference;->onDialogClosed(Z)V

    .line 447
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 448
    .local v0, mEntryValues:[Ljava/lang/CharSequence;
    if-eqz p1, :cond_0

    iget v2, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mClickedDialogEntryIndex:I

    if-ltz v2, :cond_0

    if-eqz v0, :cond_0

    .line 449
    iget v2, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mClickedDialogEntryIndex:I

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setValue(Ljava/lang/String;)V

    .line 455
    .end local v1           #value:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->syncSummary()V

    .line 456
    return-void
.end method

.method public final onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0
    .parameter "activity"
    .parameter "UIHandler"
    .parameter "nonUIHandler"

    .prologue
    .line 502
    iput-object p3, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mNonUIHandler:Landroid/os/Handler;

    .line 503
    iput-object p2, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mUIHandler:Landroid/os/Handler;

    .line 504
    return-void
.end method

.method public onHandleNonUIMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 519
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/os/HtcMessageParcel;

    .line 522
    .local v0, parcel:Lcom/android/settings/framework/os/HtcMessageParcel;
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->id:Ljava/lang/Object;

    if-eq v1, p0, :cond_0

    .line 523
    const/4 v1, 0x0

    .line 543
    :goto_0
    return v1

    .line 528
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getAssoAppFromPackageManager()V

    .line 532
    iget-object v1, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mComponentNames:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 533
    iget-object v1, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mComponentNames:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 535
    invoke-direct {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setCurrentAppPreferActivity()V

    .line 538
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->isHidePreference()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 539
    invoke-direct {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->removeThisPreference()V

    .line 542
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->syncSummary()V

    .line 543
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final onHandleUIMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 549
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/os/HtcMessageParcel;

    .line 552
    .local v0, parcel:Lcom/android/settings/framework/os/HtcMessageParcel;
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->id:Ljava/lang/Object;

    if-eq v1, p0, :cond_0

    .line 553
    const/4 v1, 0x0

    .line 556
    :goto_0
    return v1

    .line 555
    :cond_0
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->onSetSummary(Ljava/lang/String;)V

    .line 556
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
    .locals 8
    .parameter "builder"

    .prologue
    const/4 v7, 0x0

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c073a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 353
    .local v6, dialogTitle:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getInfoTypeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 356
    new-instance v0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;

    iget-object v2, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mContext:Lcom/htc/preference/HtcPreferenceActivity;

    const v3, 0x7f040083

    const v4, 0x7f0800ed

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;-><init>(Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    .line 426
    .local v0, mListAdapter:Landroid/widget/ListAdapter;
    invoke-direct {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getValueIndex()I

    move-result v1

    new-instance v2, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$2;

    invoke-direct {v2, p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$2;-><init>(Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 437
    invoke-virtual {p1, v7, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 438
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 440
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mNonUIHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    const-string v3, ""

    invoke-direct {v2, p0, v3}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 567
    return-void
.end method

.method protected onSetSummary(Ljava/lang/String;)V
    .locals 0
    .parameter "summary"

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 190
    return-void
.end method

.method protected abstract setPreferredActivity(Landroid/content/ComponentName;)V
.end method

.method public setRootScreen(Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 0
    .parameter "screen"

    .prologue
    .line 570
    iput-object p1, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mParentPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    .line 571
    return-void
.end method
