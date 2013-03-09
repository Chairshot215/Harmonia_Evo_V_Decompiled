.class public Lcom/htc/android/htcime/XT9IME/util/LoggerFactory;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# static fields
.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field public static final SILENT:I = 0x9

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLogger(I)Lcom/htc/android/htcime/XT9IME/util/Logger;
    .locals 1
    .parameter "priority_threshold"

    .prologue
    .line 19
    packed-switch p0, :pswitch_data_0

    .line 33
    :pswitch_0
    new-instance v0, Lcom/htc/android/htcime/XT9IME/util/Logger$SilentThreshold;

    invoke-direct {v0}, Lcom/htc/android/htcime/XT9IME/util/Logger$SilentThreshold;-><init>()V

    :goto_0
    return-object v0

    .line 21
    :pswitch_1
    new-instance v0, Lcom/htc/android/htcime/XT9IME/util/Logger$VerboseThreshold;

    invoke-direct {v0}, Lcom/htc/android/htcime/XT9IME/util/Logger$VerboseThreshold;-><init>()V

    goto :goto_0

    .line 23
    :pswitch_2
    new-instance v0, Lcom/htc/android/htcime/XT9IME/util/Logger$DebugThreshold;

    invoke-direct {v0}, Lcom/htc/android/htcime/XT9IME/util/Logger$DebugThreshold;-><init>()V

    goto :goto_0

    .line 25
    :pswitch_3
    new-instance v0, Lcom/htc/android/htcime/XT9IME/util/Logger$InfoThreshold;

    invoke-direct {v0}, Lcom/htc/android/htcime/XT9IME/util/Logger$InfoThreshold;-><init>()V

    goto :goto_0

    .line 27
    :pswitch_4
    new-instance v0, Lcom/htc/android/htcime/XT9IME/util/Logger$WarnThreshold;

    invoke-direct {v0}, Lcom/htc/android/htcime/XT9IME/util/Logger$WarnThreshold;-><init>()V

    goto :goto_0

    .line 29
    :pswitch_5
    new-instance v0, Lcom/htc/android/htcime/XT9IME/util/Logger$ErrorThreshold;

    invoke-direct {v0}, Lcom/htc/android/htcime/XT9IME/util/Logger$ErrorThreshold;-><init>()V

    goto :goto_0

    .line 31
    :pswitch_6
    new-instance v0, Lcom/htc/android/htcime/XT9IME/util/Logger$SilentThreshold;

    invoke-direct {v0}, Lcom/htc/android/htcime/XT9IME/util/Logger$SilentThreshold;-><init>()V

    goto :goto_0

    .line 19
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
