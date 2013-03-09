.class public Lcom/sqn/dcc/DeviceController$InternalNtf;
.super Lcom/sqn/dcc/InternalClient;
.source "DeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sqn/dcc/DeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InternalNtf"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sqn/dcc/DeviceController;


# direct methods
.method public constructor <init>(Lcom/sqn/dcc/DeviceController;)V
    .locals 0

    iput-object p1, p0, Lcom/sqn/dcc/DeviceController$InternalNtf;->this$0:Lcom/sqn/dcc/DeviceController;

    invoke-direct {p0}, Lcom/sqn/dcc/InternalClient;-><init>()V

    return-void
.end method


# virtual methods
.method public MsDetected(J)V
    .locals 0

    return-void
.end method
