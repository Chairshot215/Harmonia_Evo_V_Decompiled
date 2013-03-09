.class Lcom/sqn/dcc/DeviceController$dcNtfProcessor$ntfElement;
.super Ljava/lang/Object;
.source "DeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sqn/dcc/DeviceController$dcNtfProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ntfElement"
.end annotation


# instance fields
.field public _buf:[B

.field public _id:I

.field final synthetic this$1:Lcom/sqn/dcc/DeviceController$dcNtfProcessor;


# direct methods
.method public constructor <init>(Lcom/sqn/dcc/DeviceController$dcNtfProcessor;I[B)V
    .locals 0

    iput-object p1, p0, Lcom/sqn/dcc/DeviceController$dcNtfProcessor$ntfElement;->this$1:Lcom/sqn/dcc/DeviceController$dcNtfProcessor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sqn/dcc/DeviceController$dcNtfProcessor$ntfElement;->_id:I

    iput-object p3, p0, Lcom/sqn/dcc/DeviceController$dcNtfProcessor$ntfElement;->_buf:[B

    return-void
.end method
