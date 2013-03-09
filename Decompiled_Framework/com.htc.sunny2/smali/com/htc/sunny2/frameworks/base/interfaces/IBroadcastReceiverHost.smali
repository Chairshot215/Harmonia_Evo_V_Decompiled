.class public interface abstract Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;
.super Ljava/lang/Object;
.source "IBroadcastReceiverHost.java"


# static fields
.field public static final MEDIA_STATE_CONNECTED:I = 0x0

.field public static final MEDIA_STATE_DISCONNECTED:I = 0x1

.field public static final MEDIA_STATE_UNKNOWN:I = -0x1


# virtual methods
.method public abstract onBroadcastReceiveDispatcher(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract registerBroadcastReceiver()V
.end method

.method public abstract unregisterBroadcastReceiver()V
.end method
