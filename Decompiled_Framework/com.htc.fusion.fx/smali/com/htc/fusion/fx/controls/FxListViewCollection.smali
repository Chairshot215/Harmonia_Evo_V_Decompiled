.class public Lcom/htc/fusion/fx/controls/FxListViewCollection;
.super Lcom/htc/fusion/fx/NativeReference;
.source "FxListViewCollection.java"


# direct methods
.method protected constructor <init>(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/NativeReference;-><init>(I)V

    const-string v0, "FxListViewCollection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FxListViewCollection is created with handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static create(I)Lcom/htc/fusion/fx/controls/FxListViewCollection;
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    new-array v1, v1, [I

    invoke-static {p0, v0, v1}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->create(I[I[I)Lcom/htc/fusion/fx/controls/FxListViewCollection;

    move-result-object v0

    return-object v0
.end method

.method public static native create(I[I[I)Lcom/htc/fusion/fx/controls/FxListViewCollection;
.end method


# virtual methods
.method public insertItems(II)V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    new-array v1, v1, [I

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->insertItems(II[I[I)V

    return-void
.end method

.method public native insertItems(II[I[I)V
.end method

.method public refreshItems(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->refreshItems(IIZ)V

    return-void
.end method

.method public native refreshItems(IIZ)V
.end method

.method public native removeItems(II)V
.end method
