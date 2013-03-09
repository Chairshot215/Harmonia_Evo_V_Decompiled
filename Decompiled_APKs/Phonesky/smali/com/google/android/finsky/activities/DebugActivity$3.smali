.class Lcom/google/android/finsky/activities/DebugActivity$3;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/DebugActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper",
        "<",
        "Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DebugActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DebugActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/google/android/finsky/activities/DebugActivity$3;->this$0:Lcom/google/android/finsky/activities/DebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromStringList([Ljava/lang/String;)Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;
    .locals 4
    .parameter "list"

    .prologue
    const/4 v1, 0x0

    .line 359
    if-eqz p1, :cond_0

    .line 360
    new-instance v0, Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;

    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic fromStringList([Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 356
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/DebugActivity$3;->fromStringList([Ljava/lang/String;)Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;

    move-result-object v0

    return-object v0
.end method

.method public isSelected(Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;)Z
    .locals 3
    .parameter "country"

    .prologue
    .line 368
    sget-object v2, Lcom/google/android/finsky/api/DfeApiConfig;->ipCountryOverride:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 369
    .local v0, countryOverride:Ljava/lang/String;
    sget-object v2, Lcom/google/android/finsky/api/DfeApiConfig;->mccMncOverride:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 370
    .local v1, simOverride:Ljava/lang/String;
    iget-object v2, p1, Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;->countryCode:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;->simCode:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isSelected(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 356
    check-cast p1, Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/DebugActivity$3;->isSelected(Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;)Z

    move-result v0

    return v0
.end method

.method public selectItem(Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;)V
    .locals 1
    .parameter "newCarrier"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/android/finsky/activities/DebugActivity$3;->this$0:Lcom/google/android/finsky/activities/DebugActivity;

    #calls: Lcom/google/android/finsky/activities/DebugActivity;->selectCarrier(Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;)V
    invoke-static {v0, p1}, Lcom/google/android/finsky/activities/DebugActivity;->access$100(Lcom/google/android/finsky/activities/DebugActivity;Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;)V

    .line 377
    return-void
.end method

.method public bridge synthetic selectItem(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 356
    check-cast p1, Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/DebugActivity$3;->selectItem(Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;)V

    return-void
.end method
