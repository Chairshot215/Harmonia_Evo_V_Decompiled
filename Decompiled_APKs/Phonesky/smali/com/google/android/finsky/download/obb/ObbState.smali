.class public Lcom/google/android/finsky/download/obb/ObbState;
.super Ljava/lang/Object;
.source "ObbState.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .parameter "obbState"

    .prologue
    .line 33
    packed-switch p0, :pswitch_data_0

    .line 45
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 35
    :pswitch_0
    const-string v0, "DOWNLOAD_PENDING"

    goto :goto_0

    .line 37
    :pswitch_1
    const-string v0, "DOWNLOADING"

    goto :goto_0

    .line 39
    :pswitch_2
    const-string v0, "DOWNLOADED"

    goto :goto_0

    .line 41
    :pswitch_3
    const-string v0, "NOT_ON_STORAGE"

    goto :goto_0

    .line 43
    :pswitch_4
    const-string v0, "NOT_APPLICABLE"

    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
