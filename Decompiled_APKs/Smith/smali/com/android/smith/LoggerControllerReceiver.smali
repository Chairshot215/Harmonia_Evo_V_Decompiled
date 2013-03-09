.class public Lcom/android/smith/LoggerControllerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LoggerControllerReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/smith/LoggerControllerReceiver$OnResultListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SM:LoggerControllerReceiver"

.field private static mListener:Lcom/android/smith/LoggerControllerReceiver$OnResultListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/android/smith/LoggerControllerReceiver;->mListener:Lcom/android/smith/LoggerControllerReceiver$OnResultListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 30
    return-void
.end method

.method public static registerListener(Lcom/android/smith/LoggerControllerReceiver$OnResultListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 39
    sget-object v0, Lcom/android/smith/LoggerControllerReceiver;->mListener:Lcom/android/smith/LoggerControllerReceiver$OnResultListener;

    if-nez v0, :cond_0

    .line 41
    sput-object p0, Lcom/android/smith/LoggerControllerReceiver;->mListener:Lcom/android/smith/LoggerControllerReceiver$OnResultListener;

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    const-string v0, "SM:LoggerControllerReceiver"

    const-string v1, "listener was registered!"

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static unregisterListener()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/android/smith/LoggerControllerReceiver;->mListener:Lcom/android/smith/LoggerControllerReceiver$OnResultListener;

    .line 52
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 57
    sget-object v0, Lcom/android/smith/LoggerControllerReceiver;->mListener:Lcom/android/smith/LoggerControllerReceiver$OnResultListener;

    if-eqz v0, :cond_1

    .line 59
    invoke-static {}, Lcom/android/smith/Device;->isUserBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    sget-object v0, Lcom/android/smith/LoggerControllerReceiver;->mListener:Lcom/android/smith/LoggerControllerReceiver$OnResultListener;

    invoke-interface {v0, p2}, Lcom/android/smith/LoggerControllerReceiver$OnResultListener;->onResult(Landroid/content/Intent;)V

    .line 72
    :goto_0
    return-void

    .line 65
    :cond_0
    const-string v0, "SM:LoggerControllerReceiver"

    const-string v1, "ignore intent!"

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_1
    const-string v0, "SM:LoggerControllerReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no listener, drop intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
