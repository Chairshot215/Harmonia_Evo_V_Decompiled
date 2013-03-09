.class public Lcom/htc/android/epst/MockCdmaDmParser;
.super Ljava/lang/Object;
.source "MockCdmaDmParser.java"


# static fields
.field private static instance:Lcom/htc/android/epst/MockCdmaDmParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/htc/android/epst/MockCdmaDmParser;

    invoke-direct {v0}, Lcom/htc/android/epst/MockCdmaDmParser;-><init>()V

    sput-object v0, Lcom/htc/android/epst/MockCdmaDmParser;->instance:Lcom/htc/android/epst/MockCdmaDmParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSingleton()Lcom/htc/android/epst/MockCdmaDmParser;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/htc/android/epst/MockCdmaDmParser;->instance:Lcom/htc/android/epst/MockCdmaDmParser;

    return-object v0
.end method


# virtual methods
.method public getEsnSetting(ILcom/htc/android/epst/translator/Translator;)V
    .locals 3
    .parameter "itemId"
    .parameter "commander"

    .prologue
    .line 78
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Lcom/htc/android/epst/translator/Translator;->retrieveItemAndUpdate(II)V

    .line 100
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMsidSetting(ILcom/htc/android/epst/translator/Translator;)V
    .locals 3
    .parameter "itemId"
    .parameter "commander"

    .prologue
    .line 131
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Lcom/htc/android/epst/translator/Translator;->retrieveItemAndUpdate(II)V

    .line 153
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSetting(ILcom/htc/android/epst/translator/Translator;)V
    .locals 3
    .parameter "itemId"
    .parameter "commander"

    .prologue
    .line 25
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Lcom/htc/android/epst/translator/Translator;->retrieveItemAndUpdate(II)V

    .line 47
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 28
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public setEsnSetting(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/translator/Translator;)V
    .locals 3
    .parameter "item"
    .parameter "commander"

    .prologue
    .line 104
    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    invoke-interface {p2}, Lcom/htc/android/epst/translator/Translator;->refreshGroupSettings()V

    .line 127
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public setMsidSetting(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/translator/Translator;)V
    .locals 3
    .parameter "item"
    .parameter "commander"

    .prologue
    .line 157
    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    invoke-interface {p2}, Lcom/htc/android/epst/translator/Translator;->refreshGroupSettings()V

    .line 180
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public setSetting(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/translator/Translator;)V
    .locals 3
    .parameter "item"
    .parameter "commander"

    .prologue
    .line 51
    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    invoke-interface {p2}, Lcom/htc/android/epst/translator/Translator;->refreshGroupSettings()V

    .line 74
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
