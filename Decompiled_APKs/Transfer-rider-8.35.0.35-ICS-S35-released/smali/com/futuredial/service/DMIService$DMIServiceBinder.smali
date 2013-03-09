.class public Lcom/futuredial/service/DMIService$DMIServiceBinder;
.super Landroid/os/Binder;
.source "DMIService.java"

# interfaces
.implements Lcom/futuredial/service/DMISrvInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/service/DMIService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DMIServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/service/DMIService;


# direct methods
.method public constructor <init>(Lcom/futuredial/service/DMIService;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/futuredial/service/DMIService$DMIServiceBinder;->this$0:Lcom/futuredial/service/DMIService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public dmi_bt_cancel_pair()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/futuredial/service/DMIService$DMIServiceBinder;->this$0:Lcom/futuredial/service/DMIService;

    iget-object v0, v0, Lcom/futuredial/service/DMIService;->m_pairModule:Lcom/futuredial/service/DMIBTPairModule;

    invoke-virtual {v0}, Lcom/futuredial/service/DMIBTPairModule;->dmi_bt_cancel_pair()Z

    move-result v0

    return v0
.end method

.method public dmi_bt_close_bt()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/futuredial/service/DMIService$DMIServiceBinder;->this$0:Lcom/futuredial/service/DMIService;

    iget-object v0, v0, Lcom/futuredial/service/DMIService;->m_scanModule:Lcom/futuredial/service/DMIBTScanModule;

    invoke-virtual {v0}, Lcom/futuredial/service/DMIBTScanModule;->dmi_bt_close_bt()V

    .line 143
    return-void
.end method

.method public dmi_bt_is_open()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/futuredial/service/DMIService$DMIServiceBinder;->this$0:Lcom/futuredial/service/DMIService;

    iget-object v0, v0, Lcom/futuredial/service/DMIService;->m_scanModule:Lcom/futuredial/service/DMIBTScanModule;

    invoke-virtual {v0}, Lcom/futuredial/service/DMIBTScanModule;->dmi_bt_is_open()Z

    move-result v0

    return v0
.end method

.method public dmi_bt_is_paired()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/futuredial/service/DMIService$DMIServiceBinder;->this$0:Lcom/futuredial/service/DMIService;

    iget-object v0, v0, Lcom/futuredial/service/DMIService;->m_pairModule:Lcom/futuredial/service/DMIBTPairModule;

    invoke-virtual {v0}, Lcom/futuredial/service/DMIBTPairModule;->dmi_bt_is_paired()Z

    move-result v0

    return v0
.end method

.method public dmi_bt_pair()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/futuredial/service/DMIService$DMIServiceBinder;->this$0:Lcom/futuredial/service/DMIService;

    iget-object v0, v0, Lcom/futuredial/service/DMIService;->m_pairModule:Lcom/futuredial/service/DMIBTPairModule;

    invoke-virtual {v0}, Lcom/futuredial/service/DMIBTPairModule;->dmi_bt_pair()Z

    move-result v0

    return v0
.end method

.method public dmi_bt_pair_target(Lcom/futuredial/service/DMIBTDevice;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/futuredial/service/DMIService$DMIServiceBinder;->this$0:Lcom/futuredial/service/DMIService;

    iget-object v0, v0, Lcom/futuredial/service/DMIService;->m_pairModule:Lcom/futuredial/service/DMIBTPairModule;

    invoke-virtual {v0, p1}, Lcom/futuredial/service/DMIBTPairModule;->dmi_bt_pair_target(Lcom/futuredial/service/DMIBTDevice;)V

    .line 150
    return-void
.end method

.method public dmi_bt_query_phone_history(Lcom/futuredial/service/DMIBTDevice;Lcom/futuredial/service/DMIPhone;)V
    .locals 1
    .parameter "d"
    .parameter "phoneinfo"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/futuredial/service/DMIService$DMIServiceBinder;->this$0:Lcom/futuredial/service/DMIService;

    iget-object v0, v0, Lcom/futuredial/service/DMIService;->m_queryModule:Lcom/futuredial/service/DMIBTQueryModule;

    invoke-virtual {v0, p1, p2}, Lcom/futuredial/service/DMIBTQueryModule;->dmi_bt_query_phone_history(Lcom/futuredial/service/DMIBTDevice;Lcom/futuredial/service/DMIPhone;)V

    .line 171
    return-void
.end method

.method public dmi_bt_query_phone_model(Lcom/futuredial/service/DMIBTDevice;)Z
    .locals 1
    .parameter "d"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/futuredial/service/DMIService$DMIServiceBinder;->this$0:Lcom/futuredial/service/DMIService;

    iget-object v0, v0, Lcom/futuredial/service/DMIService;->m_queryModule:Lcom/futuredial/service/DMIBTQueryModule;

    invoke-virtual {v0, p1}, Lcom/futuredial/service/DMIBTQueryModule;->dmi_bt_query_phone_model(Lcom/futuredial/service/DMIBTDevice;)Z

    move-result v0

    return v0
.end method

.method public dmi_bt_start_scan()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/futuredial/service/DMIService$DMIServiceBinder;->this$0:Lcom/futuredial/service/DMIService;

    iget-object v0, v0, Lcom/futuredial/service/DMIService;->m_scanModule:Lcom/futuredial/service/DMIBTScanModule;

    invoke-virtual {v0}, Lcom/futuredial/service/DMIBTScanModule;->dmi_bt_start_scan()Z

    move-result v0

    return v0
.end method

.method public dmi_bt_stop_scan()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/futuredial/service/DMIService$DMIServiceBinder;->this$0:Lcom/futuredial/service/DMIService;

    iget-object v0, v0, Lcom/futuredial/service/DMIService;->m_scanModule:Lcom/futuredial/service/DMIBTScanModule;

    invoke-virtual {v0}, Lcom/futuredial/service/DMIBTScanModule;->dmi_bt_stop_scan()Z

    move-result v0

    return v0
.end method

.method public dmi_bt_unpair()Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/futuredial/service/DMIService$DMIServiceBinder;->this$0:Lcom/futuredial/service/DMIService;

    iget-object v0, v0, Lcom/futuredial/service/DMIService;->m_pairModule:Lcom/futuredial/service/DMIBTPairModule;

    invoke-virtual {v0}, Lcom/futuredial/service/DMIBTPairModule;->dmi_bt_unpair()Z

    move-result v0

    return v0
.end method

.method public dmi_clean_module(Lcom/futuredial/service/DMIPhone;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "phoneinfo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/futuredial/service/DMIPhone;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p2, rmModules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/futuredial/service/DMIService$DMIServiceBinder;->this$0:Lcom/futuredial/service/DMIService;

    iget-object v0, v0, Lcom/futuredial/service/DMIService;->m_rwModule:Lcom/futuredial/service/DMIRWModule;

    invoke-virtual {v0, p1, p2}, Lcom/futuredial/service/DMIRWModule;->dmi_clean_module(Lcom/futuredial/service/DMIPhone;Ljava/util/ArrayList;)V

    .line 185
    return-void
.end method

.method public dmi_set_phone_maker(Ljava/lang/String;)V
    .locals 1
    .parameter "maker"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/futuredial/service/DMIService$DMIServiceBinder;->this$0:Lcom/futuredial/service/DMIService;

    iget-object v0, v0, Lcom/futuredial/service/DMIService;->m_queryModule:Lcom/futuredial/service/DMIBTQueryModule;

    invoke-virtual {v0, p1}, Lcom/futuredial/service/DMIBTQueryModule;->dmi_set_phone_maker(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public dmi_start_rw(Lcom/futuredial/DmiHandler;Lcom/futuredial/service/DMIPhone;)V
    .locals 2
    .parameter "worker"
    .parameter "phoneinfo"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/futuredial/service/DMIService$DMIServiceBinder;->this$0:Lcom/futuredial/service/DMIService;

    iget-object v0, v0, Lcom/futuredial/service/DMIService;->m_rwModule:Lcom/futuredial/service/DMIRWModule;

    iget-object v1, p0, Lcom/futuredial/service/DMIService$DMIServiceBinder;->this$0:Lcom/futuredial/service/DMIService;

    iget-object v1, v1, Lcom/futuredial/service/DMIService;->m_uiHandler:Lcom/futuredial/ui/UIHandler;

    invoke-virtual {v0, p1, p2, v1}, Lcom/futuredial/service/DMIRWModule;->dmi_start_rw(Lcom/futuredial/DmiHandler;Lcom/futuredial/service/DMIPhone;Lcom/futuredial/ui/UIHandler;)V

    .line 180
    return-void
.end method

.method public get_activity()Lcom/futuredial/ui/DMIUI;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/futuredial/service/DMIService$DMIServiceBinder;->this$0:Lcom/futuredial/service/DMIService;

    iget-object v0, v0, Lcom/futuredial/service/DMIService;->m_uiActivity:Lcom/futuredial/ui/DMIUI;

    return-object v0
.end method

.method public set_activity(Lcom/futuredial/ui/DMIUI;)V
    .locals 3
    .parameter "uiInstance"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/futuredial/service/DMIService$DMIServiceBinder;->this$0:Lcom/futuredial/service/DMIService;

    iget-object v0, v0, Lcom/futuredial/service/DMIService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activity update instance to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/futuredial/service/DMIService$DMIServiceBinder;->this$0:Lcom/futuredial/service/DMIService;

    iput-object p1, v0, Lcom/futuredial/service/DMIService;->m_uiActivity:Lcom/futuredial/ui/DMIUI;

    .line 112
    return-void
.end method

.method public set_handle(Lcom/futuredial/ui/UIHandler;)V
    .locals 3
    .parameter "h"

    .prologue
    .line 119
    iget-object v1, p0, Lcom/futuredial/service/DMIService$DMIServiceBinder;->this$0:Lcom/futuredial/service/DMIService;

    iput-object p1, v1, Lcom/futuredial/service/DMIService;->m_uiHandler:Lcom/futuredial/ui/UIHandler;

    .line 120
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/futuredial/service/DMIService$DMIServiceBinder;->this$0:Lcom/futuredial/service/DMIService;

    iget-object v1, v1, Lcom/futuredial/service/DMIService;->m_function_modules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/futuredial/service/DMIService$DMIServiceBinder;->this$0:Lcom/futuredial/service/DMIService;

    iget-object v1, v1, Lcom/futuredial/service/DMIService;->m_function_modules:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/futuredial/service/DMIFunctionModule;

    iget-object v2, p0, Lcom/futuredial/service/DMIService$DMIServiceBinder;->this$0:Lcom/futuredial/service/DMIService;

    iget-object v2, v2, Lcom/futuredial/service/DMIService;->m_uiHandler:Lcom/futuredial/ui/UIHandler;

    invoke-virtual {v1, v2}, Lcom/futuredial/service/DMIFunctionModule;->set_ui_handler(Lcom/futuredial/ui/UIHandler;)V

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    return-void
.end method

.method public testme()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/futuredial/service/DMIService$DMIServiceBinder;->this$0:Lcom/futuredial/service/DMIService;

    iget-object v0, v0, Lcom/futuredial/service/DMIService;->TAG:Ljava/lang/String;

    const-string v1, "test me~~~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method
