.class public Lcom/futuredial/service/DMIPairQueryService;
.super Lcom/futuredial/service/DMIService;
.source "DMIPairQueryService.java"


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
    .line 8
    iget-object v0, p0, Lcom/futuredial/service/DMIPairQueryService;->TAG:Ljava/lang/String;

    const-string v1, " *** DMI service start ***"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/futuredial/service/DMIPairQueryService;->m_function_modules:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/futuredial/service/DMIPairQueryService;->m_pairModule:Lcom/futuredial/service/DMIBTPairModule;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Lcom/futuredial/service/DMIPairQueryService;->m_function_modules:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/futuredial/service/DMIPairQueryService;->m_queryModule:Lcom/futuredial/service/DMIBTQueryModule;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {p0}, Lcom/futuredial/service/DMIPairQueryService;->init_function_modules()V

    .line 14
    return-void
.end method

.method protected UninitService()V
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/futuredial/service/DMIPairQueryService;->TAG:Ljava/lang/String;

    const-string v1, " *** DMI service end ***"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-virtual {p0}, Lcom/futuredial/service/DMIPairQueryService;->finalize_function__modules()V

    .line 20
    return-void
.end method
