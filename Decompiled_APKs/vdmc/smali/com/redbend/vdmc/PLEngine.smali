.class public Lcom/redbend/vdmc/PLEngine;
.super Ljava/lang/Object;
.source "PLEngine.java"

# interfaces
.implements Lcom/redbend/vdm/PLFactory;


# instance fields
.field private _vdmc:Lcom/redbend/vdmc/Vdmc;


# direct methods
.method public constructor <init>(Lcom/redbend/vdmc/Vdmc;)V
    .locals 0
    .parameter "vdmc"

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/redbend/vdmc/PLEngine;->_vdmc:Lcom/redbend/vdmc/Vdmc;

    .line 12
    return-void
.end method


# virtual methods
.method public getDownloadPkg()Lcom/redbend/vdm/PLDlPkg;
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/redbend/vdmc/DlPkg;

    iget-object v1, p0, Lcom/redbend/vdmc/PLEngine;->_vdmc:Lcom/redbend/vdmc/Vdmc;

    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/redbend/vdmc/DlPkg;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getRegistry()Lcom/redbend/vdm/PLRegistry;
    .locals 3

    .prologue
    .line 18
    new-instance v0, Lcom/redbend/vdmc/Registry;

    iget-object v1, p0, Lcom/redbend/vdmc/PLEngine;->_vdmc:Lcom/redbend/vdmc/Vdmc;

    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vdm.reg"

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdmc/Registry;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public getStorage()Lcom/redbend/vdm/PLStorage;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/redbend/vdmc/Storage;

    iget-object v1, p0, Lcom/redbend/vdmc/PLEngine;->_vdmc:Lcom/redbend/vdmc/Vdmc;

    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/redbend/vdmc/Storage;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
