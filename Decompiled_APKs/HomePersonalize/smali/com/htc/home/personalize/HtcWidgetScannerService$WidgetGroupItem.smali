.class public Lcom/htc/home/personalize/HtcWidgetScannerService$WidgetGroupItem;
.super Ljava/lang/Object;
.source "HtcWidgetScannerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/HtcWidgetScannerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetGroupItem"
.end annotation


# instance fields
.field public mGroupItem:Lcom/htc/home/WidgetGroupItemInterface;

.field public mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
