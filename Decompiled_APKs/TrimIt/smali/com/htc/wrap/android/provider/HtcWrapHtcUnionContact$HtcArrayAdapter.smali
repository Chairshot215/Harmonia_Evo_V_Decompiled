.class public abstract Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$HtcArrayAdapter;
.super Landroid/provider/HtcUnionContact$HtcArrayAdapter;
.source "HtcWrapHtcUnionContact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "HtcArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/provider/HtcUnionContact$HtcArrayAdapter",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "layoutRes"

    .prologue
    .line 1045
    .local p0, this:Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$HtcArrayAdapter;,"Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$HtcArrayAdapter<TE;>;"
    invoke-direct {p0, p1, p2}, Landroid/provider/HtcUnionContact$HtcArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 1046
    return-void
.end method
