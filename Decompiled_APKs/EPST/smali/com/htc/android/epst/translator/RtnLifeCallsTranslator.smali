.class public Lcom/htc/android/epst/translator/RtnLifeCallsTranslator;
.super Lcom/htc/android/epst/translator/LifeCounterTranslator;
.source "RtnLifeCallsTranslator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/htc/android/epst/translator/LifeCounterTranslator;-><init>()V

    return-void
.end method

.method private formattedCalls()Ljava/lang/String;
    .locals 6

    .prologue
    .line 15
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v1

    const v2, 0x7f040011

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/htc/android/epst/translator/RtnLifeCallsTranslator;->getTotalCount()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, ret:Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public getSettingValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    const-string v0, ""

    .line 10
    .local v0, value:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/android/epst/translator/RtnLifeCallsTranslator;->formattedCalls()Ljava/lang/String;

    move-result-object v0

    .line 11
    return-object v0
.end method
