.class Lcom/sqn/dcc/DeviceController$dcThread;
.super Ljava/lang/Thread;
.source "DeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sqn/dcc/DeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "dcThread"
.end annotation


# instance fields
.field _isAlive:Z

.field final synthetic this$0:Lcom/sqn/dcc/DeviceController;


# direct methods
.method private constructor <init>(Lcom/sqn/dcc/DeviceController;)V
    .locals 1

    iput-object p1, p0, Lcom/sqn/dcc/DeviceController$dcThread;->this$0:Lcom/sqn/dcc/DeviceController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sqn/dcc/DeviceController$dcThread;->_isAlive:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sqn/dcc/DeviceController;Lcom/sqn/dcc/DeviceController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sqn/dcc/DeviceController$dcThread;-><init>(Lcom/sqn/dcc/DeviceController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sqn/dcc/DeviceController$dcThread;->_isAlive:Z

    invoke-super {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public terminate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sqn/dcc/DeviceController$dcThread;->_isAlive:Z

    return-void
.end method
