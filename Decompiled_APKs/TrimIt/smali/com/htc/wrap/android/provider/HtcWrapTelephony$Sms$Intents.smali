.class public Lcom/htc/wrap/android/provider/HtcWrapTelephony$Sms$Intents;
.super Ljava/lang/Object;
.source "HtcWrapTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapTelephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Intents"
.end annotation


# static fields
.field public static final CB_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.CB_RECEIVED"

.field public static final DEVICE_FULL_ACTION:Ljava/lang/String; = "android.provider.Telephony.DEVICE_FULL"

.field public static final DX_WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.DX_WAP_PUSH_RECEIVED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
