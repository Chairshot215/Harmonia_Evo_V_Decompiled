.class public Lcom/htc/HtcNaviPanel/CarDockService$CarDockType;
.super Ljava/lang/Object;
.source "CarDockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/HtcNaviPanel/CarDockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CarDockType"
.end annotation


# static fields
.field public static final BLUETOOTH_CONNECT:I = 0x2

.field public static final BLUETOOTH_DISCONNECT:I = 0x3

.field public static final STOP_SERVICE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/htc/HtcNaviPanel/CarDockService;


# direct methods
.method public constructor <init>(Lcom/htc/HtcNaviPanel/CarDockService;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/htc/HtcNaviPanel/CarDockService$CarDockType;->this$0:Lcom/htc/HtcNaviPanel/CarDockService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
