.class public Lcom/htc/android/epst/translator/RtnLifeTimerTranslator;
.super Lcom/htc/android/epst/translator/LifeTimerTranslator;
.source "RtnLifeTimerTranslator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/htc/android/epst/translator/LifeTimerTranslator;-><init>()V

    return-void
.end method


# virtual methods
.method public getSettingValue()Ljava/lang/String;
    .locals 7

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/htc/android/epst/translator/RtnLifeTimerTranslator;->getTotalTimer()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 10
    .local v1, totalTimer:Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x3c

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 12
    .local v0, min:Ljava/lang/Long;
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v3

    const v4, 0x7f040012

    invoke-virtual {v3, v4}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 14
    .local v2, value:Ljava/lang/String;
    return-object v2
.end method
