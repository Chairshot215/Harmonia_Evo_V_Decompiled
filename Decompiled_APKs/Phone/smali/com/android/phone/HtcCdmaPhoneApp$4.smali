.class Lcom/android/phone/HtcCdmaPhoneApp$4;
.super Landroid/database/ContentObserver;
.source "HtcCdmaPhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HtcCdmaPhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaPhoneApp;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcCdmaPhoneApp;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1577
    iput-object p1, p0, Lcom/android/phone/HtcCdmaPhoneApp$4;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1581
    iget-object v2, p0, Lcom/android/phone/HtcCdmaPhoneApp$4;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    invoke-static {}, Lcom/android/phone/HtcCdmaPhoneApp;->access$1000()Lcom/android/phone/HtcCdmaPhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/HtcCdmaPhoneApp;->mCr:Landroid/content/ContentResolver;

    const-string v4, "roaming_ringtone_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    iput-boolean v0, v2, Lcom/android/phone/HtcCdmaPhoneApp;->isEnableRoamingRing:Z

    .line 1583
    iget-object v0, p0, Lcom/android/phone/HtcCdmaPhoneApp$4;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Roaming ringtone setting change "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/HtcCdmaPhoneApp$4;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    iget-boolean v2, v2, Lcom/android/phone/HtcCdmaPhoneApp;->isEnableRoamingRing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/HtcCdmaPhoneApp;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/HtcCdmaPhoneApp;->access$100(Lcom/android/phone/HtcCdmaPhoneApp;Ljava/lang/String;)V

    .line 1584
    return-void

    :cond_0
    move v0, v1

    .line 1581
    goto :goto_0
.end method
