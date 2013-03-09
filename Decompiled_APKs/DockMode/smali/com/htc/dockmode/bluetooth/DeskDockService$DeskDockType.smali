.class public Lcom/htc/dockmode/bluetooth/DeskDockService$DeskDockType;
.super Ljava/lang/Object;
.source "DeskDockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/bluetooth/DeskDockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeskDockType"
.end annotation


# static fields
.field public static final BLUETOOTH_CONNECT:I = 0x1

.field public static final BLUETOOTH_DISCONNECT:I = 0x2

.field public static final STOP_SERVICE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
