.class public abstract Lcom/android/htccontacts/model/AccountType;
.super Ljava/lang/Object;
.source "AccountType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/model/AccountType$DisplayLabelComparator;,
        Lcom/android/htccontacts/model/AccountType$StringInflater;,
        Lcom/android/htccontacts/model/AccountType$EditField;,
        Lcom/android/htccontacts/model/AccountType$EventEditType;,
        Lcom/android/htccontacts/model/AccountType$EditType;
    }
.end annotation


# static fields
.field public static final SELF_DEFINED_MINETYPE_CUSTOM_RINGTONE:Ljava/lang/String; = "custom_minetype"

.field public static final SELF_DEFINED_MINETYPE_SEND_TO_VOICEMAIL:Ljava/lang/String; = "send_to_voicemail"

.field private static final TAG:Ljava/lang/String; = "AccountType"

.field private static sWeightComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/htccontacts/model/DataKind;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public accountType:Ljava/lang/String;

.field public canJoint:Z

.field public canSync:Z

.field public dataSet:Ljava/lang/String;

.field public iconRes:I

.field private mKinds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/DataKind;",
            ">;"
        }
    .end annotation
.end field

.field protected mMimeKinds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/htccontacts/model/DataKind;",
            ">;"
        }
    .end annotation
.end field

.field public readOnly:Z

.field public resPackageName:Ljava/lang/String;

.field public summaryResPackageName:Ljava/lang/String;

.field public titleRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 268
    new-instance v0, Lcom/android/htccontacts/model/AccountType$1;

    invoke-direct {v0}, Lcom/android/htccontacts/model/AccountType$1;-><init>()V

    sput-object v0, Lcom/android/htccontacts/model/AccountType;->sWeightComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v1, p0, Lcom/android/htccontacts/model/AccountType;->accountType:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/android/htccontacts/model/AccountType;->dataSet:Ljava/lang/String;

    .line 75
    iput-boolean v0, p0, Lcom/android/htccontacts/model/AccountType;->canJoint:Z

    .line 76
    iput-boolean v0, p0, Lcom/android/htccontacts/model/AccountType;->canSync:Z

    .line 89
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/model/AccountType;->mKinds:Ljava/util/ArrayList;

    .line 94
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/model/AccountType;->mMimeKinds:Ljava/util/HashMap;

    .line 437
    return-void
.end method

.method static getResourceText(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "context"
    .parameter "packageName"
    .parameter "resId"
    .parameter "defaultValue"

    .prologue
    const/4 v1, -0x1

    .line 224
    if-eq p2, v1, :cond_1

    if-eqz p1, :cond_1

    .line 225
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 226
    .local v0, pm:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p3

    .line 230
    .end local v0           #pm:Landroid/content/pm/PackageManager;
    .end local p3
    :cond_0
    :goto_0
    return-object p3

    .line 227
    .restart local p3
    :cond_1
    if-eq p2, v1, :cond_0

    .line 228
    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    goto :goto_0
.end method


# virtual methods
.method public addKind(Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/DataKind;
    .locals 2
    .parameter "kind"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/htccontacts/model/AccountType;->resPackageName:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/htccontacts/model/DataKind;->resPackageName:Ljava/lang/String;

    .line 298
    iget-object v0, p0, Lcom/android/htccontacts/model/AccountType;->mKinds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v0, p0, Lcom/android/htccontacts/model/AccountType;->mMimeKinds:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    return-object p1
.end method

.method public abstract areContactsWritable()Z
.end method

.method public getAccountTypeAndDataSet()Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/htccontacts/model/AccountType;->accountType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/htccontacts/model/AccountType;->dataSet:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    move-result-object v0

    return-object v0
.end method

.method public getCreateContactActivityClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDispalyAccountName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "context"
    .parameter "accountName"

    .prologue
    .line 252
    return-object p2
.end method

.method public getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 235
    iget v2, p0, Lcom/android/htccontacts/model/AccountType;->titleRes:I

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/htccontacts/model/AccountType;->summaryResPackageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 236
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 237
    .local v0, pm:Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/android/htccontacts/model/AccountType;->summaryResPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/htccontacts/model/AccountType;->iconRes:I

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 241
    .end local v0           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-object v1

    .line 238
    :cond_1
    iget v2, p0, Lcom/android/htccontacts/model/AccountType;->titleRes:I

    if-eq v2, v3, :cond_0

    .line 239
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/htccontacts/model/AccountType;->iconRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "context"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/htccontacts/model/AccountType;->summaryResPackageName:Ljava/lang/String;

    iget v1, p0, Lcom/android/htccontacts/model/AccountType;->titleRes:I

    iget-object v2, p0, Lcom/android/htccontacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/android/htccontacts/model/AccountType;->getResourceText(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getEditContactActivityClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtensionPackageNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public abstract getHeaderColor(Landroid/content/Context;)I
.end method

.method public getInviteContactActionLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "context"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/htccontacts/model/AccountType;->summaryResPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/htccontacts/model/AccountType;->getInviteContactActionResId()I

    move-result v1

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/android/htccontacts/model/AccountType;->getResourceText(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getInviteContactActionResId()I
    .locals 1

    .prologue
    .line 164
    const/4 v0, -0x1

    return v0
.end method

.method public getInviteContactActivityClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKindForMimetype(Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/htccontacts/model/AccountType;->mMimeKinds:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/DataKind;

    return-object v0
.end method

.method public abstract getSideBarColor(Landroid/content/Context;)I
.end method

.method public getSortedDataKinds()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/DataKind;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/htccontacts/model/AccountType;->mKinds:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/htccontacts/model/AccountType;->sWeightComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 281
    iget-object v0, p0, Lcom/android/htccontacts/model/AccountType;->mKinds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getViewContactNotifyServiceClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewGroupActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewGroupLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 204
    iget-object v1, p0, Lcom/android/htccontacts/model/AccountType;->summaryResPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/htccontacts/model/AccountType;->getViewGroupLabelResId()I

    move-result v2

    invoke-static {p1, v1, v2, v3}, Lcom/android/htccontacts/model/AccountType;->getResourceText(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 207
    .local v0, customTitle:Ljava/lang/CharSequence;
    return-object v3
.end method

.method protected getViewGroupLabelResId()I
    .locals 1

    .prologue
    .line 171
    const/4 v0, -0x1

    return v0
.end method

.method public getViewStreamItemActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewStreamItemPhotoActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method public isExtension()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isGroupMembershipEditable()Z
.end method
