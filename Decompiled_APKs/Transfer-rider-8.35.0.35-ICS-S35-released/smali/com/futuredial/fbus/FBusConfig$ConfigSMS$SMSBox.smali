.class public Lcom/futuredial/fbus/FBusConfig$ConfigSMS$SMSBox;
.super Ljava/lang/Object;
.source "FBusConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/fbus/FBusConfig$ConfigSMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SMSBox"
.end annotation


# instance fields
.field public m_strBoxID:Ljava/lang/String;

.field public m_strBoxName:Ljava/lang/String;

.field public m_strBoxPath:Ljava/lang/String;

.field final synthetic this$1:Lcom/futuredial/fbus/FBusConfig$ConfigSMS;


# direct methods
.method public constructor <init>(Lcom/futuredial/fbus/FBusConfig$ConfigSMS;)V
    .locals 1
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS$SMSBox;->this$1:Lcom/futuredial/fbus/FBusConfig$ConfigSMS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS$SMSBox;->m_strBoxID:Ljava/lang/String;

    .line 319
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS$SMSBox;->m_strBoxName:Ljava/lang/String;

    .line 320
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS$SMSBox;->m_strBoxPath:Ljava/lang/String;

    .line 321
    return-void
.end method


# virtual methods
.method public InitSMSBox(Lorg/w3c/dom/Node;)V
    .locals 2
    .parameter "ndSMSBox"

    .prologue
    .line 327
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS$SMSBox;->this$1:Lcom/futuredial/fbus/FBusConfig$ConfigSMS;

    iget-object v0, v0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS;->this$0:Lcom/futuredial/fbus/FBusConfig;

    const-string v1, "id"

    #calls: Lcom/futuredial/fbus/FBusConfig;->GetNodeAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1, v1}, Lcom/futuredial/fbus/FBusConfig;->access$000(Lcom/futuredial/fbus/FBusConfig;Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS$SMSBox;->m_strBoxID:Ljava/lang/String;

    .line 329
    iget-object v0, p0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS$SMSBox;->this$1:Lcom/futuredial/fbus/FBusConfig$ConfigSMS;

    iget-object v0, v0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS;->this$0:Lcom/futuredial/fbus/FBusConfig;

    const-string v1, "name"

    #calls: Lcom/futuredial/fbus/FBusConfig;->GetNodeAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1, v1}, Lcom/futuredial/fbus/FBusConfig;->access$000(Lcom/futuredial/fbus/FBusConfig;Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS$SMSBox;->m_strBoxName:Ljava/lang/String;

    .line 330
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/futuredial/fbus/FBusConfig$ConfigSMS$SMSBox;->m_strBoxPath:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1
.end method
