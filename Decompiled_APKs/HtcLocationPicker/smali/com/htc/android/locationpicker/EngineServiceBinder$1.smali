.class Lcom/htc/android/locationpicker/EngineServiceBinder$1;
.super Ljava/lang/Object;
.source "EngineServiceBinder.java"

# interfaces
.implements Lcom/htc/laputa/engine/util/Service$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/locationpicker/EngineServiceBinder;->bindEngineService(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/locationpicker/EngineServiceBinder;


# direct methods
.method constructor <init>(Lcom/htc/android/locationpicker/EngineServiceBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/android/locationpicker/EngineServiceBinder$1;->this$0:Lcom/htc/android/locationpicker/EngineServiceBinder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    .prologue
    .line 54
    const-string v0, "EngineServiceBinder"

    const-string v1, "[EngineServiceListener] : Service onConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/htc/android/locationpicker/EngineServiceBinder$1;->this$0:Lcom/htc/android/locationpicker/EngineServiceBinder;

    const/4 v1, 0x1

    #setter for: Lcom/htc/android/locationpicker/EngineServiceBinder;->bIsBindSuccess:Z
    invoke-static {v0, v1}, Lcom/htc/android/locationpicker/EngineServiceBinder;->access$002(Lcom/htc/android/locationpicker/EngineServiceBinder;Z)Z

    .line 56
    iget-object v0, p0, Lcom/htc/android/locationpicker/EngineServiceBinder$1;->this$0:Lcom/htc/android/locationpicker/EngineServiceBinder;

    #getter for: Lcom/htc/android/locationpicker/EngineServiceBinder;->m_Listener:Lcom/htc/android/locationpicker/EngineServiceBinder$OnEngineUtilServiceListener;
    invoke-static {v0}, Lcom/htc/android/locationpicker/EngineServiceBinder;->access$100(Lcom/htc/android/locationpicker/EngineServiceBinder;)Lcom/htc/android/locationpicker/EngineServiceBinder$OnEngineUtilServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/htc/android/locationpicker/EngineServiceBinder$1;->this$0:Lcom/htc/android/locationpicker/EngineServiceBinder;

    #getter for: Lcom/htc/android/locationpicker/EngineServiceBinder;->m_Listener:Lcom/htc/android/locationpicker/EngineServiceBinder$OnEngineUtilServiceListener;
    invoke-static {v0}, Lcom/htc/android/locationpicker/EngineServiceBinder;->access$100(Lcom/htc/android/locationpicker/EngineServiceBinder;)Lcom/htc/android/locationpicker/EngineServiceBinder$OnEngineUtilServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/locationpicker/EngineServiceBinder$OnEngineUtilServiceListener;->onConnected()V

    .line 58
    :cond_0
    return-void
.end method

.method public onDisconnected()V
    .locals 2

    .prologue
    .line 62
    const-string v0, "EngineServiceBinder"

    const-string v1, "[EngineServiceListener] : Service onDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/htc/android/locationpicker/EngineServiceBinder$1;->this$0:Lcom/htc/android/locationpicker/EngineServiceBinder;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/locationpicker/EngineServiceBinder;->bIsBindSuccess:Z
    invoke-static {v0, v1}, Lcom/htc/android/locationpicker/EngineServiceBinder;->access$002(Lcom/htc/android/locationpicker/EngineServiceBinder;Z)Z

    .line 64
    iget-object v0, p0, Lcom/htc/android/locationpicker/EngineServiceBinder$1;->this$0:Lcom/htc/android/locationpicker/EngineServiceBinder;

    #getter for: Lcom/htc/android/locationpicker/EngineServiceBinder;->m_Listener:Lcom/htc/android/locationpicker/EngineServiceBinder$OnEngineUtilServiceListener;
    invoke-static {v0}, Lcom/htc/android/locationpicker/EngineServiceBinder;->access$100(Lcom/htc/android/locationpicker/EngineServiceBinder;)Lcom/htc/android/locationpicker/EngineServiceBinder$OnEngineUtilServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/htc/android/locationpicker/EngineServiceBinder$1;->this$0:Lcom/htc/android/locationpicker/EngineServiceBinder;

    #getter for: Lcom/htc/android/locationpicker/EngineServiceBinder;->m_Listener:Lcom/htc/android/locationpicker/EngineServiceBinder$OnEngineUtilServiceListener;
    invoke-static {v0}, Lcom/htc/android/locationpicker/EngineServiceBinder;->access$100(Lcom/htc/android/locationpicker/EngineServiceBinder;)Lcom/htc/android/locationpicker/EngineServiceBinder$OnEngineUtilServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/locationpicker/EngineServiceBinder$OnEngineUtilServiceListener;->onDisconnected()V

    .line 66
    :cond_0
    return-void
.end method
