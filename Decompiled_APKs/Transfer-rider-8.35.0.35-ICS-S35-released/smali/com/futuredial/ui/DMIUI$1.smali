.class Lcom/futuredial/ui/DMIUI$1;
.super Ljava/lang/Object;
.source "DMIUI.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuredial/ui/DMIUI;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/ui/DMIUI;

.field final synthetic val$data:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/futuredial/ui/DMIUI;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/futuredial/ui/DMIUI$1;->this$0:Lcom/futuredial/ui/DMIUI;

    iput-object p2, p0, Lcom/futuredial/ui/DMIUI$1;->val$data:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 98
    const-string v0, "[DMI service]"

    const-string v1, "Service bound "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    check-cast p2, Lcom/futuredial/service/DMISrvInterface;

    .end local p2
    sput-object p2, Lcom/futuredial/ui/DMIUI;->DMIsrv:Lcom/futuredial/service/DMISrvInterface;

    .line 100
    sget-object v0, Lcom/futuredial/ui/DMIUI;->DMIsrv:Lcom/futuredial/service/DMISrvInterface;

    iget-object v1, p0, Lcom/futuredial/ui/DMIUI$1;->this$0:Lcom/futuredial/ui/DMIUI;

    iget-object v1, v1, Lcom/futuredial/ui/DMIUI;->m_this:Lcom/futuredial/ui/DMIUI;

    invoke-interface {v0, v1}, Lcom/futuredial/service/DMISrvInterface;->set_activity(Lcom/futuredial/ui/DMIUI;)V

    .line 101
    sget-object v0, Lcom/futuredial/ui/DMIUI;->DMIsrv:Lcom/futuredial/service/DMISrvInterface;

    iget-object v1, p0, Lcom/futuredial/ui/DMIUI$1;->this$0:Lcom/futuredial/ui/DMIUI;

    iget-object v1, v1, Lcom/futuredial/ui/DMIUI;->m_gHandler:Lcom/futuredial/ui/UIHandler;

    invoke-interface {v0, v1}, Lcom/futuredial/service/DMISrvInterface;->set_handle(Lcom/futuredial/ui/UIHandler;)V

    .line 102
    iget-object v0, p0, Lcom/futuredial/ui/DMIUI$1;->this$0:Lcom/futuredial/ui/DMIUI;

    iget-object v1, p0, Lcom/futuredial/ui/DMIUI$1;->val$data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/DMIUI;->start_activity(Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 108
    const-string v0, "[DMI service]"

    const-string v1, "Service unbound "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v0, 0x0

    sput-object v0, Lcom/futuredial/ui/DMIUI;->DMIsrv:Lcom/futuredial/service/DMISrvInterface;

    .line 110
    return-void
.end method
