.class Lcom/android/phone/PhoneApp$ImsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter

    .prologue
    .line 5668
    iput-object p1, p0, Lcom/android/phone/PhoneApp$ImsBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5668
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp$ImsBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 5671
    iget-object v0, p0, Lcom/android/phone/PhoneApp$ImsBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    const-string v1, "IMS_REG_STATUS"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    #setter for: Lcom/android/phone/PhoneApp;->imsRegistered:Z
    invoke-static {v0, v1}, Lcom/android/phone/PhoneApp;->access$6402(Lcom/android/phone/PhoneApp;Z)Z

    .line 5672
    return-void
.end method
