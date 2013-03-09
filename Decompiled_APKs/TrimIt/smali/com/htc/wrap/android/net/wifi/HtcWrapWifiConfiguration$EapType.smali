.class public Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$EapType;
.super Ljava/lang/Object;
.source "HtcWrapWifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EapType"
.end annotation


# static fields
.field public static final LEAP:Ljava/lang/String; = "LEAP"

.field public static final PEAP:Ljava/lang/String; = "PEAP"

.field public static final TLS:Ljava/lang/String; = "TLS"

.field public static final TTLS:Ljava/lang/String; = "TTLS"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
