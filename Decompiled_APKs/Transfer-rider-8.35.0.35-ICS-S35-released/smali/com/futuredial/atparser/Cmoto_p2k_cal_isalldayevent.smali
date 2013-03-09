.class Lcom/futuredial/atparser/Cmoto_p2k_cal_isalldayevent;
.super Lcom/futuredial/atparser/CProcType;
.source "CProcType.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/futuredial/atparser/CProcType;-><init>()V

    return-void
.end method


# virtual methods
.method public proc_value(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "val"

    .prologue
    .line 34
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "0"

    .line 35
    :goto_0
    return-object p1

    .line 34
    :cond_0
    const-string p1, "1"

    goto :goto_0
.end method
