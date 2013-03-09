.class public Lcom/htc/clock3dwidget/setting/HtcCitySeparable;
.super Ljava/lang/Object;
.source "HtcCitySeparable.java"

# interfaces
.implements Lcom/htc/widget/HtcListItemSeparable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldDrawOnThis()Z
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x1

    return v0
.end method

.method public shouldSeparate(Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 14
    const/4 v0, 0x1

    return v0
.end method
