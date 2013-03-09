.class Lcom/android/phone/GetPin2Screen$1;
.super Landroid/telephony/PhoneStateListener;
.source "GetPin2Screen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GetPin2Screen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GetPin2Screen;


# direct methods
.method constructor <init>(Lcom/android/phone/GetPin2Screen;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/phone/GetPin2Screen$1;->this$0:Lcom/android/phone/GetPin2Screen;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "serviceState"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen$1;->this$0:Lcom/android/phone/GetPin2Screen;

    invoke-virtual {v0}, Lcom/android/phone/GetPin2Screen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen$1;->this$0:Lcom/android/phone/GetPin2Screen;

    invoke-virtual {v0}, Lcom/android/phone/GetPin2Screen;->finish()V

    .line 87
    :cond_0
    return-void
.end method
