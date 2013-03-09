.class public Lcom/android/settings/framework/flag/HtcProjectFlags$Info;
.super Ljava/lang/Object;
.source "HtcProjectFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/flag/HtcProjectFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 442
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProjectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    sget-short v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->CURRENT_PROJECT_FLAG:S

    sparse-switch v0, :sswitch_data_0

    .line 454
    const-string v0, ""

    :goto_0
    return-object v0

    .line 446
    :sswitch_0
    const-string v0, "Sprint"

    goto :goto_0

    .line 448
    :sswitch_1
    const-string v0, "KDDI"

    goto :goto_0

    .line 450
    :sswitch_2
    const-string v0, "Virgin Mobile"

    goto :goto_0

    .line 452
    :sswitch_3
    const-string v0, "Boost Mobile"

    goto :goto_0

    .line 444
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_3
        0x51 -> :sswitch_1
        0x94 -> :sswitch_0
        0xaf -> :sswitch_2
    .end sparse-switch
.end method
