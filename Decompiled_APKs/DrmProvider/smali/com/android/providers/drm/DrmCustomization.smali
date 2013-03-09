.class public Lcom/android/providers/drm/DrmCustomization;
.super Ljava/lang/Object;
.source "DrmCustomization.java"


# static fields
.field private static final CUSTOM_CATEGORY_NAME:Ljava/lang/String; = "application"

.field private static final CUSTOM_FUNCTION_NAME:Ljava/lang/String; = "Drm_Support"

.field private static final CUSTOM_MODEL_NAME:Ljava/lang/String; = "Drm_Provider"

.field private static final CUSTOM_NAME_COMBINED_DELIVERY:Ljava/lang/String; = "combined_delivery"

.field private static final CUSTOM_NAME_COMBINED_DELIVERY_ACRONYM:Ljava/lang/String; = "CD"

.field private static final CUSTOM_NAME_FORWARD_LOCK:Ljava/lang/String; = "forward_lock"

.field private static final CUSTOM_NAME_FORWARD_LOCK_ACRONYM:Ljava/lang/String; = "FL"

.field private static final CUSTOM_NAME_SEPARATE_DELIVERY:Ljava/lang/String; = "separate_delivery"

.field private static final CUSTOM_NAME_SEPARATE_DELIVERY_ACRONYM:Ljava/lang/String; = "SD"

.field private static final CUSTOM_NAME_VERSION:Ljava/lang/String; = "version"

.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "DrmCustomization"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBooleanValue(Ljava/lang/String;)Z
    .locals 2
    .parameter "value"

    .prologue
    const/4 v0, 0x1

    .line 135
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 140
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 143
    const-string v1, "false"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "no"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "disable"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "disabled"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onHandleCutomization(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 60
    const-string v6, "application"

    const-string v7, "Drm_Provider"

    invoke-static {p0, v6, v7}, Lcom/android/providers/drm/DrmCustomizationDataReader;->getData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/drm/DrmCustomizationData;

    move-result-object v2

    .line 65
    .local v2, data:Lcom/android/providers/drm/DrmCustomizationData;
    if-nez v2, :cond_1

    .line 99
    :cond_0
    return-void

    .line 69
    :cond_1
    const-string v6, "Drm_Support"

    invoke-virtual {v2, v6}, Lcom/android/providers/drm/DrmCustomizationData;->getBundleWithFunctionName(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 71
    .local v0, bundleData:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 77
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 79
    .local v3, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 83
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 84
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 93
    .local v5, value:Ljava/lang/String;
    const-string v6, "DrmCustomization"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cust_DrmProvider:DRMSupport"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {v1, v4, v5}, Lcom/android/providers/drm/DrmCustomization;->setNameAndValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static setNameAndValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "resolver"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 104
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    const-string v0, "forward_lock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    const-string v0, "combined_delivery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    :cond_2
    invoke-static {p2}, Lcom/android/providers/drm/DrmCustomization;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Landroid/provider/DrmHelper;->setEnableCombinedDelivery(Z)V

    goto :goto_0

    .line 121
    :cond_3
    const-string v0, "separate_delivery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "SD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    :cond_4
    invoke-static {p2}, Lcom/android/providers/drm/DrmCustomization;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Landroid/provider/DrmHelper;->setEnableSeparateDelivery(Z)V

    goto :goto_0
.end method
