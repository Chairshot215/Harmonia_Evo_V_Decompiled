.class Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;
.super Ljava/lang/Object;
.source "VdmTreeProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbend/vdm/VdmTreeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NodeHandler"
.end annotation


# instance fields
.field public _id:I

.field public _obj:Ljava/lang/Object;

.field public _uri:Ljava/lang/String;

.field final synthetic this$0:Lcom/redbend/vdm/VdmTreeProxy;


# direct methods
.method public constructor <init>(Lcom/redbend/vdm/VdmTreeProxy;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter "uri"
    .parameter "obj"
    .parameter "id"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;->this$0:Lcom/redbend/vdm/VdmTreeProxy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p3, p0, Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;->_obj:Ljava/lang/Object;

    .line 261
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;->_uri:Ljava/lang/String;

    .line 262
    iput p4, p0, Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;->_id:I

    .line 263
    return-void
.end method
