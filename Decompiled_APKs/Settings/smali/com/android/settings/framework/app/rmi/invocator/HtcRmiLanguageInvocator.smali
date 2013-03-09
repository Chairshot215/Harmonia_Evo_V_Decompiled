.class public Lcom/android/settings/framework/app/rmi/invocator/HtcRmiLanguageInvocator;
.super Lcom/android/settings/framework/app/rmi/HtcRmiCallback;
.source "HtcRmiLanguageInvocator.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/android/settings/framework/app/rmi/invocator/HtcRmiApplicationInvocator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/app/rmi/invocator/HtcRmiLanguageInvocator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/settings/framework/app/rmi/HtcRmiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequest(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2
    .parameter "context"
    .parameter "methodName"
    .parameter "input"
    .parameter "output"

    .prologue
    .line 23
    sget-object v0, Lcom/android/settings/framework/app/rmi/invocator/HtcRmiLanguageInvocator;->TAG:Ljava/lang/String;

    const-string v1, "HtcRmiLocationSetter"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void
.end method
