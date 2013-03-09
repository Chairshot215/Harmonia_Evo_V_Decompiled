.class public Lcom/htc/wrap/android/provider/HtcWrapTelephony$Intents;
.super Ljava/lang/Object;
.source "HtcWrapTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Intents"
.end annotation


# static fields
.field public static final EXTRA_FLASH_PLMN:Ljava/lang/String; = "flashPlmn"

.field public static final EXTRA_MCC:Ljava/lang/String; = "mccString"

.field public static final EXTRA_NETWORK_STATE:Ljava/lang/String; = "networkState"

.field public static final EXTRA_UNREGISTERED:Ljava/lang/String; = "unregistered_icc"

.field public static final MCC_STRING_UPDATED_ACTION:Ljava/lang/String; = "android.provider.Telephony.MCC_STRING_UPDATED"

.field public static final SECRET_CODE_ACTION:Ljava/lang/String; = "android.provider.Telephony.SECRET_CODE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
