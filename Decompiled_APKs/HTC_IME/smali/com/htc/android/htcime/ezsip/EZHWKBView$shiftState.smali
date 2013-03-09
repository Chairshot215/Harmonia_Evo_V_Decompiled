.class public Lcom/htc/android/htcime/ezsip/EZHWKBView$shiftState;
.super Ljava/lang/Object;
.source "EZHWKBView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ezsip/EZHWKBView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "shiftState"
.end annotation


# static fields
.field public static final SHIFT:I = 0x3

.field public static final Shift:I = 0x2

.field public static final UNKNOWN:I = 0x4

.field public static final shift:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ezsip/EZHWKBView;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/ezsip/EZHWKBView;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$shiftState;->this$0:Lcom/htc/android/htcime/ezsip/EZHWKBView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
