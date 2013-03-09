.class public Lcom/htc/wrap/android/widget/HtcWrapArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "HtcWrapArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "textViewResourceId"

    .prologue
    .line 16
    .local p0, this:Lcom/htc/wrap/android/widget/HtcWrapArrayAdapter;,"Lcom/htc/wrap/android/widget/HtcWrapArrayAdapter<TT;>;"
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"

    .prologue
    .line 28
    .local p0, this:Lcom/htc/wrap/android/widget/HtcWrapArrayAdapter;,"Lcom/htc/wrap/android/widget/HtcWrapArrayAdapter<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/util/List;)V
    .locals 0
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, this:Lcom/htc/wrap/android/widget/HtcWrapArrayAdapter;,"Lcom/htc/wrap/android/widget/HtcWrapArrayAdapter<TT;>;"
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II[Ljava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II[TT;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, this:Lcom/htc/wrap/android/widget/HtcWrapArrayAdapter;,"Lcom/htc/wrap/android/widget/HtcWrapArrayAdapter<TT;>;"
    .local p4, objects:[Ljava/lang/Object;,"[TT;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, this:Lcom/htc/wrap/android/widget/HtcWrapArrayAdapter;,"Lcom/htc/wrap/android/widget/HtcWrapArrayAdapter<TT;>;"
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[TT;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, this:Lcom/htc/wrap/android/widget/HtcWrapArrayAdapter;,"Lcom/htc/wrap/android/widget/HtcWrapArrayAdapter<TT;>;"
    .local p3, objects:[Ljava/lang/Object;,"[TT;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected setDataSource(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, this:Lcom/htc/wrap/android/widget/HtcWrapArrayAdapter;,"Lcom/htc/wrap/android/widget/HtcWrapArrayAdapter<TT;>;"
    .local p1, results:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->setDataSource(Ljava/util/List;)V

    .line 89
    return-void
.end method
