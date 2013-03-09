.class public Lcom/htc/fusion/fx/FxObject$ChildIterator;
.super Lcom/htc/fusion/fx/NativeReference;
.source "FxObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/fx/FxObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChildIterator"
.end annotation


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/NativeReference;-><init>(I)V

    return-void
.end method


# virtual methods
.method public native get()Lcom/htc/fusion/fx/FxObject;
.end method

.method public native goToBeginning()V
.end method

.method public native goToEnd()V
.end method

.method public native isBeginning()Z
.end method

.method public native isEnd()Z
.end method

.method public native next()V
.end method

.method public native previous()V
.end method
