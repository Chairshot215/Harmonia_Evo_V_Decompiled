.class Lcom/android/phone/HtcCdmaPhoneApp$5;
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
    .line 1586
    iput-object p1, p0, Lcom/android/phone/HtcCdmaPhoneApp$5;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 1589
    invoke-static {}, Lcom/android/phone/HtcCdmaPhoneApp;->access$1000()Lcom/android/phone/HtcCdmaPhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/HtcCdmaPhoneApp;->mCr:Landroid/content/ContentResolver;

    const-string v1, "screen_off_timeout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/phone/HtcCdmaPhoneApp;->screenOffTimeout:I

    .line 1592
    iget-object v0, p0, Lcom/android/phone/HtcCdmaPhoneApp$5;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backlight setting change "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/HtcCdmaPhoneApp;->screenOffTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/HtcCdmaPhoneApp;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/HtcCdmaPhoneApp;->access$100(Lcom/android/phone/HtcCdmaPhoneApp;Ljava/lang/String;)V

    .line 1593
    return-void
.end method
