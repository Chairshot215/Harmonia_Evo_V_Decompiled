.class public Lcom/htc/android/epst/translator/MMSCSettingTranslator;
.super Lcom/htc/android/epst/translator/StringBasedTranslator;
.source "MMSCSettingTranslator.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MMSCSettingSTranslator"


# instance fields
.field private MMSCSetting:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/htc/android/epst/translator/StringBasedTranslator;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/translator/MMSCSettingTranslator;->MMSCSetting:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSettingValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 15
    const-string v0, "MMSCSettingSTranslator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMSCSetting value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/translator/MMSCSettingTranslator;->MMSCSetting:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v0, p0, Lcom/htc/android/epst/translator/MMSCSettingTranslator;->MMSCSetting:Ljava/lang/String;

    return-object v0
.end method

.method public sendReadRequest(I)V
    .locals 1
    .parameter "itemId"

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/epst/translator/MMSCSettingTranslator;->retrieveItemAndUpdate(II)V

    .line 25
    return-void
.end method
