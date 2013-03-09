.class public Lcom/futuredial/service/DMIScanService;
.super Lcom/futuredial/service/DMIService;
.source "DMIScanService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/futuredial/service/DMIService;-><init>()V

    return-void
.end method


# virtual methods
.method protected InitService()V
    .locals 2

    .prologue
    .line 9
    iget-object v0, p0, Lcom/futuredial/service/DMIScanService;->TAG:Ljava/lang/String;

    const-string v1, " *** DMI service start ***"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/futuredial/service/DMIScanService;->m_function_modules:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/futuredial/service/DMIScanService;->m_scanModule:Lcom/futuredial/service/DMIBTScanModule;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {p0}, Lcom/futuredial/service/DMIScanService;->init_function_modules()V

    .line 13
    return-void
.end method

.method protected UninitService()V
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/futuredial/service/DMIScanService;->TAG:Ljava/lang/String;

    const-string v1, " *** DMI service end ***"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-virtual {p0}, Lcom/futuredial/service/DMIScanService;->finalize_function__modules()V

    .line 19
    return-void
.end method
