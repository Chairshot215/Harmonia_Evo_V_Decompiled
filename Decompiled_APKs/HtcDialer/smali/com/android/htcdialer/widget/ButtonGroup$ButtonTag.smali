.class public Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;
.super Ljava/lang/Object;
.source "ButtonGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/widget/ButtonGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ButtonTag"
.end annotation


# static fields
.field public static final UNDEFINED:I


# instance fields
.field public drawable:I

.field public id:I

.field public text:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;->id:I

    .line 33
    iput v0, p0, Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;->drawable:I

    .line 34
    iput v0, p0, Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;->text:I

    .line 35
    return-void
.end method
