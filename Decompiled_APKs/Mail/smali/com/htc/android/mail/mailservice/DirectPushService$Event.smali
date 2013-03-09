.class interface abstract Lcom/htc/android/mail/mailservice/DirectPushService$Event;
.super Ljava/lang/Object;
.source "DirectPushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/mailservice/DirectPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Event"
.end annotation


# static fields
.field public static final CHANGE_TO_IDLE:I = 0x6

.field public static final NETWORK_CONNECTED:I = 0x3

.field public static final NETWORK_DISCONNECTED:I = 0x4

.field public static final RECEIVE_SMS:I = 0x5

.field public static final START_DP:I = 0x1

.field public static final STOP_DP:I = 0x2
