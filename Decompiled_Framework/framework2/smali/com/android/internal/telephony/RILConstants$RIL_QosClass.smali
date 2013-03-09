.class public Lcom/android/internal/telephony/RILConstants$RIL_QosClass;
.super Ljava/lang/Object;
.source "RILConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RILConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RIL_QosClass"
.end annotation


# static fields
.field public static final RIL_QOS_BACKGROUND:I = 0x3

.field public static final RIL_QOS_CONVERSATIONAL:I = 0x0

.field public static final RIL_QOS_INTERACTIVE:I = 0x2

.field public static final RIL_QOS_STREAMING:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "RIL_QOS_CONVERSATIONAL"

    goto :goto_0

    :pswitch_1
    const-string v0, "RIL_QOS_STREAMING"

    goto :goto_0

    :pswitch_2
    const-string v0, "RIL_QOS_INTERACTIVE"

    goto :goto_0

    :pswitch_3
    const-string v0, "RIL_QOS_BACKGROUND"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
