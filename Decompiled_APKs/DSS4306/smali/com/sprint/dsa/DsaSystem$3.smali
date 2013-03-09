.class Lcom/sprint/dsa/DsaSystem$3;
.super Ljava/lang/Object;
.source "DsaSystem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/DsaSystem;->initSystem(Lcom/sprint/dsa/DsaClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/DsaSystem;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/DsaSystem;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/DsaSystem$3;->this$0:Lcom/sprint/dsa/DsaSystem;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sprint/dsa/DsaSystem$3;->this$0:Lcom/sprint/dsa/DsaSystem;

    #calls: Lcom/sprint/dsa/DsaSystem;->_doInUI()V
    invoke-static {v0}, Lcom/sprint/dsa/DsaSystem;->access$2(Lcom/sprint/dsa/DsaSystem;)V

    .line 130
    return-void
.end method
