.class Lcom/htc/cscore/restapi/proxy/RestServicesProxy$3;
.super Lcom/htc/gson/reflect/TypeToken;
.source "RestServicesProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->GetMyCommentAndLikeCounts(Ljava/lang/String;)Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/gson/reflect/TypeToken",
        "<",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/htc/cscore/restapi/proxy/WebClasses$WCommentAndLikeCounts;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;


# direct methods
.method constructor <init>(Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$3;->this$0:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    invoke-direct {p0}, Lcom/htc/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
