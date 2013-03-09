.class public Lcom/htc/android/epst/translator/CDRomTranslator;
.super Lcom/htc/android/epst/translator/OptionBasedTranslator;
.source "CDRomTranslator.java"


# instance fields
.field private DBG:Z

.field LOG_TAG:Ljava/lang/String;

.field mDisplayManager:Lcom/htc/service/DisplayManager;

.field mMountService:Landroid/os/storage/IMountService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/android/epst/translator/OptionBasedTranslator;-><init>()V

    .line 30
    const-string v0, "CDRomTranslator"

    iput-object v0, p0, Lcom/htc/android/epst/translator/CDRomTranslator;->LOG_TAG:Ljava/lang/String;

    .line 31
    sget-boolean v0, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    iput-boolean v0, p0, Lcom/htc/android/epst/translator/CDRomTranslator;->DBG:Z

    return-void
.end method


# virtual methods
.method public getAvailableOptions()Ljava/util/List;
    .locals 4
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
    .line 37
    iget-object v2, p0, Lcom/htc/android/epst/translator/CDRomTranslator;->mMountService:Landroid/os/storage/IMountService;

    if-nez v2, :cond_0

    .line 38
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 39
    .local v1, service:Landroid/os/IBinder;
    if-eqz v1, :cond_1

    .line 40
    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/translator/CDRomTranslator;->mMountService:Landroid/os/storage/IMountService;

    .line 47
    .end local v1           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v0, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v2

    const v3, 0x7f04005c

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v2

    const v3, 0x7f04005d

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    return-object v0

    .line 42
    .end local v0           #ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1       #service:Landroid/os/IBinder;
    :cond_1
    iget-object v2, p0, Lcom/htc/android/epst/translator/CDRomTranslator;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Can\'t get mount service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 57
    const-string v2, "persist.cdrom_config"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 58
    .local v0, iValue:I
    iget-boolean v2, p0, Lcom/htc/android/epst/translator/CDRomTranslator;->DBG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/epst/translator/CDRomTranslator;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSettingValue get.persist.cdrom_config:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v2

    const v3, 0x7f04005c

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, value:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 59
    .end local v1           #value:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v2

    const v3, 0x7f04005d

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public sendReadRequest(I)V
    .locals 1
    .parameter "itemId"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/epst/translator/CDRomTranslator;->retrieveItemAndUpdate(II)V

    .line 69
    return-void
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 8
    .parameter "modifiedValue"

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 73
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, value:Ljava/lang/String;
    const/4 v0, 0x0

    .line 75
    .local v0, bEnable:Z
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v5

    const v7, 0x7f04005c

    invoke-virtual {v5, v7}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 76
    const/4 v0, 0x1

    .line 78
    :cond_0
    const-string v5, "persist.cdrom_config"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 79
    .local v3, iValue:I
    if-ne v3, v1, :cond_2

    .line 80
    .local v1, bOEnable:Z
    :goto_0
    if-eq v0, v1, :cond_1

    .line 84
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/epst/translator/CDRomTranslator;->mDisplayManager:Lcom/htc/service/DisplayManager;

    if-nez v5, :cond_1

    .line 85
    sget-object v5, Lcom/htc/android/epst/EPST;->mContext:Landroid/content/Context;

    const-string v7, "display"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/service/DisplayManager;

    iput-object v5, p0, Lcom/htc/android/epst/translator/CDRomTranslator;->mDisplayManager:Lcom/htc/service/DisplayManager;

    .line 86
    iget-object v5, p0, Lcom/htc/android/epst/translator/CDRomTranslator;->mDisplayManager:Lcom/htc/service/DisplayManager;

    if-eqz v5, :cond_3

    .line 87
    iget-object v5, p0, Lcom/htc/android/epst/translator/CDRomTranslator;->mDisplayManager:Lcom/htc/service/DisplayManager;

    invoke-virtual {v5}, Lcom/htc/service/DisplayManager;->IsHDMIEnable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/android/epst/translator/CDRomTranslator;->retrieveItemAndUpdate(II)V

    .line 99
    invoke-virtual {p0}, Lcom/htc/android/epst/translator/CDRomTranslator;->refreshGroupSettings()V

    .line 100
    return-void

    .end local v1           #bOEnable:Z
    :cond_2
    move v1, v6

    .line 79
    goto :goto_0

    .line 89
    .restart local v1       #bOEnable:Z
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/htc/android/epst/translator/CDRomTranslator;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Can\'t get mount service"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 93
    :catch_0
    move-exception v2

    .line 94
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
