.class public Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;
.super Ljava/lang/Object;
.source "HtcScreenTimeoutPolicyManager.java"


# static fields
.field private static final NO_POLICY_INDEX:I = -0x1


# instance fields
.field private mIndexOfPolicyItem:I

.field private mInsertionMode:Z

.field private mPolicyHintText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->mIndexOfPolicyItem:I

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->mInsertionMode:Z

    .line 99
    return-void
.end method

.method private insertPolicyItem(Ljava/util/ArrayList;I)V
    .locals 6
    .parameter
    .parameter "maxInactivityTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, timeValueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const v5, 0x7fffffff

    const/4 v4, -0x1

    .line 252
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 258
    .local v1, size:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 264
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 265
    add-int/lit8 v2, v1, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 274
    .local v0, insertIndex:I
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 275
    add-int/lit8 v2, v1, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_1
    :goto_0
    if-gez v0, :cond_3

    .line 287
    neg-int v2, v0

    add-int/lit8 v0, v2, -0x1

    .line 288
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->mInsertionMode:Z

    .line 291
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 295
    :goto_1
    iput v0, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->mIndexOfPolicyItem:I

    .line 296
    return-void

    .line 280
    .end local v0           #insertIndex:I
    :cond_2
    const/4 v0, -0x1

    .restart local v0       #insertIndex:I
    goto :goto_0

    .line 293
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->mInsertionMode:Z

    goto :goto_1
.end method


# virtual methods
.method public applyGooglePolicy(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p2, timeValueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-wide/16 v1, 0x0

    .line 192
    .local v1, maxTimeout:J
    const-string v3, "device_policy"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 194
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-nez v0, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v1

    .line 201
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00a7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->mPolicyHintText:Ljava/lang/String;

    .line 210
    long-to-int v3, v1

    invoke-direct {p0, p2, v3}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->insertPolicyItem(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public applyHtcExchangePolicy(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p2, timeValueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "MaxInactivityTimeDeviceLock"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, stringSeconds:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 229
    :cond_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->mIndexOfPolicyItem:I

    .line 243
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->mPolicyHintText:Ljava/lang/String;

    .line 239
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v0, v2, 0x3e8

    .line 242
    .local v0, maxInactivityTime:I
    invoke-direct {p0, p2, v0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->insertPolicyItem(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public getIndexOfPolicyItem()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->mIndexOfPolicyItem:I

    return v0
.end method

.method public getPolicyHintText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->mPolicyHintText:Ljava/lang/String;

    return-object v0
.end method

.method public hasPolicy()Z
    .locals 2

    .prologue
    .line 109
    iget v0, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->mIndexOfPolicyItem:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInsertionMode()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->mInsertionMode:Z

    return v0
.end method
