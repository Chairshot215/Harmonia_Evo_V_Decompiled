.class public Lcom/futuredial/service/DMIRWService;
.super Lcom/futuredial/service/DMIService;
.source "DMIRWService.java"


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
    iget-object v0, p0, Lcom/futuredial/service/DMIRWService;->TAG:Ljava/lang/String;

    const-string v1, " *** DMI service start ***"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lcom/futuredial/service/DMIRWService;->m_function_modules:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/futuredial/service/DMIRWService;->m_rwModule:Lcom/futuredial/service/DMIRWModule;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p0}, Lcom/futuredial/service/DMIRWService;->init_function_modules()V

    .line 12
    return-void
.end method

.method protected UninitService()V
    .locals 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/futuredial/service/DMIRWService;->TAG:Ljava/lang/String;

    const-string v1, " *** DMI service end ***"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {p0}, Lcom/futuredial/service/DMIRWService;->finalize_function__modules()V

    .line 18
    return-void
.end method
