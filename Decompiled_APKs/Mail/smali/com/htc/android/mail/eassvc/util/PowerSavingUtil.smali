.class public Lcom/htc/android/mail/eassvc/util/PowerSavingUtil;
.super Ljava/lang/Object;
.source "PowerSavingUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EAS_PowerSavingUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeRadioDormantTimer(II)V
    .locals 5
    .parameter "type"
    .parameter "value"

    .prologue
    .line 23
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 25
    .local v1, telSvc:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 26
    const-string v2, "EAS_PowerSavingUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-interface {v1, p0, p1}, Lcom/android/internal/telephony/ITelephony;->sendAT_PushMail(II)V

    .line 34
    .end local v1           #telSvc:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return-void

    .line 29
    .restart local v1       #telSvc:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    const-string v2, "EAS_PowerSavingUtil"

    const-string v3, "fail to get ITelephony"

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 31
    .end local v1           #telSvc:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 32
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "EAS_PowerSavingUtil"

    const-string v3, "fail to get ITelephony: "

    invoke-static {v2, v3, v0}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
