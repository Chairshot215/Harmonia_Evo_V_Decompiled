.class public Lcom/htc/android/epst/translator/ActiveProfileIndexTranslator;
.super Lcom/htc/android/epst/translator/OptionBasedTranslator;
.source "ActiveProfileIndexTranslator.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String; = null

.field public static final option_0:Ljava/lang/String; = "0"

.field public static final option_1:Ljava/lang/String; = "1"

.field public static final option_2:Ljava/lang/String; = "2"

.field public static final option_3:Ljava/lang/String; = "3"

.field public static final option_4:Ljava/lang/String; = "4"

.field public static final option_5:Ljava/lang/String; = "5"


# instance fields
.field mRawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACTIVE_PROFILE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "ActiveProfileIndexTranslator"

    sput-object v0, Lcom/htc/android/epst/translator/ActiveProfileIndexTranslator;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/htc/android/epst/translator/OptionBasedTranslator;-><init>()V

    .line 17
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    const/16 v1, 0x1d0

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACTIVE_PROFILE;

    iput-object v0, p0, Lcom/htc/android/epst/translator/ActiveProfileIndexTranslator;->mRawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACTIVE_PROFILE;

    return-void
.end method


# virtual methods
.method public getAvailableOptions()Ljava/util/List;
    .locals 2
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
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v0, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "0"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    const-string v1, "1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    const-string v1, "2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    const-string v1, "3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    const-string v1, "4"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    const-string v1, "5"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    return-object v0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/android/epst/translator/ActiveProfileIndexTranslator;->mRawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACTIVE_PROFILE;

    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACTIVE_PROFILE;->getActiveProfile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendReadRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 46
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/16 v2, 0x1d0

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 48
    return-void
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 5
    .parameter "modifiedValue"

    .prologue
    .line 52
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/epst/translator/ActiveProfileIndexTranslator;->mRawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACTIVE_PROFILE;

    invoke-virtual {v1, v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACTIVE_PROFILE;->setActiveProfile(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v1

    const/16 v2, 0x27

    const/16 v3, 0x1d0

    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 57
    return-void
.end method
