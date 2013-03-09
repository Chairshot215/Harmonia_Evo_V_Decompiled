.class public abstract Lcom/htc/android/epst/dmcmd/DmCmdBase;
.super Lcom/htc/android/epst/internal/StructBase;
.source "DmCmdBase.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/htc/android/epst/internal/StructBase;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/epst/dmcmd/DmCmdBase;->TYPE:I

    .line 12
    return-void
.end method


# virtual methods
.method public generateCmdDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCheckCmdState()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method
