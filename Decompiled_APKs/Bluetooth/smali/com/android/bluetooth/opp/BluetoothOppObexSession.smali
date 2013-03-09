.class public interface abstract Lcom/android/bluetooth/opp/BluetoothOppObexSession;
.super Ljava/lang/Object;
.source "BluetoothOppObexSession.java"


# static fields
.field public static final MSG_CONNECT_TIMEOUT:I = 0x4

.field public static final MSG_SESSION_COMPLETE:I = 0x1

.field public static final MSG_SESSION_ERROR:I = 0x2

.field public static final MSG_SHARE_COMPLETE:I = 0x0

.field public static final MSG_SHARE_INTERRUPTED:I = 0x3

.field public static final MSG_SHARE_PROGRESS:I = 0x5

.field public static final SESSION_TIMEOUT:I = 0xc350


# virtual methods
.method public abstract addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
.end method

.method public abstract start(Landroid/os/Handler;)V
.end method

.method public abstract stop()V
.end method

.method public abstract unblock()V
.end method
