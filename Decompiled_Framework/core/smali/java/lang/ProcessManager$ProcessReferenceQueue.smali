.class Ljava/lang/ProcessManager$ProcessReferenceQueue;
.super Ljava/lang/ref/ReferenceQueue;
.source "ProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessReferenceQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/ReferenceQueue",
        "<",
        "Ljava/lang/ProcessManager$ProcessImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public poll()Ljava/lang/ProcessManager$ProcessReference;
    .locals 1

    invoke-super {p0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Ljava/lang/ProcessManager$ProcessReference;

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/ref/Reference;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/ProcessManager$ProcessReferenceQueue;->poll()Ljava/lang/ProcessManager$ProcessReference;

    move-result-object v0

    return-object v0
.end method
