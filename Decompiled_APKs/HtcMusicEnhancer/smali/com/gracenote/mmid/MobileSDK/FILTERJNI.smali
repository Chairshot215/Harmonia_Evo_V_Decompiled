.class Lcom/gracenote/mmid/MobileSDK/FILTERJNI;
.super Ljava/lang/Object;
.source "FILTERJNI.java"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 8
    :try_start_0
    const-string v1, "filter"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 9
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 10
    .restart local v0       #e:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "JNI"

    const-string v2, "WARNING: Could not load libfilter.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public native nativePreprocess([BIII)I
.end method

.method public preprocess([BIII)I
    .locals 1
    .parameter "samples"
    .parameter "length"
    .parameter "channel"
    .parameter "sampleRate"

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/gracenote/mmid/MobileSDK/FILTERJNI;->nativePreprocess([BIII)I

    move-result v0

    return v0
.end method
