.class public Lcom/sqn/dcc/Gpio;
.super Ljava/lang/Object;
.source "Gpio.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetState(Ljava/lang/String;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sqn/dcc/agscGpioImpl;->GetState(Ljava/lang/String;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GpioInitialize(Lcom/sqn/dcc/GpioClient;)V
    .locals 1

    new-instance v0, Lcom/sqn/dcc/agscGpioImpl;

    invoke-direct {v0}, Lcom/sqn/dcc/agscGpioImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sqn/dcc/agscGpioImpl;->initialize(Lcom/sqn/dcc/GpioClient;)V

    return-void
.end method

.method public static SetState(Ljava/lang/String;ILcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sqn/dcc/agscGpioImpl;->SetState(Ljava/lang/String;ILcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method
