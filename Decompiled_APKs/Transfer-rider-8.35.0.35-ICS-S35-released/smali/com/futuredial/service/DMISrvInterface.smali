.class public interface abstract Lcom/futuredial/service/DMISrvInterface;
.super Ljava/lang/Object;
.source "DMISrvInterface.java"


# virtual methods
.method public abstract dmi_bt_cancel_pair()Z
.end method

.method public abstract dmi_bt_close_bt()V
.end method

.method public abstract dmi_bt_is_open()Z
.end method

.method public abstract dmi_bt_is_paired()Z
.end method

.method public abstract dmi_bt_pair()Z
.end method

.method public abstract dmi_bt_pair_target(Lcom/futuredial/service/DMIBTDevice;)V
.end method

.method public abstract dmi_bt_query_phone_history(Lcom/futuredial/service/DMIBTDevice;Lcom/futuredial/service/DMIPhone;)V
.end method

.method public abstract dmi_bt_query_phone_model(Lcom/futuredial/service/DMIBTDevice;)Z
.end method

.method public abstract dmi_bt_start_scan()Z
.end method

.method public abstract dmi_bt_stop_scan()Z
.end method

.method public abstract dmi_bt_unpair()Z
.end method

.method public abstract dmi_clean_module(Lcom/futuredial/service/DMIPhone;Ljava/util/ArrayList;)V
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
.end method

.method public abstract dmi_set_phone_maker(Ljava/lang/String;)V
.end method

.method public abstract dmi_start_rw(Lcom/futuredial/DmiHandler;Lcom/futuredial/service/DMIPhone;)V
.end method

.method public abstract get_activity()Lcom/futuredial/ui/DMIUI;
.end method

.method public abstract set_activity(Lcom/futuredial/ui/DMIUI;)V
.end method

.method public abstract set_handle(Lcom/futuredial/ui/UIHandler;)V
.end method

.method public abstract testme()V
.end method
