.class Lcom/htc/feedback/PrivacyPageActivity$Client$ParsingVersionRunnable$1;
.super Ljava/lang/Object;
.source "PrivacyPageActivity.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/feedback/PrivacyPageActivity$Client$ParsingVersionRunnable;->loadHttpsContent(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/htc/feedback/PrivacyPageActivity$Client$ParsingVersionRunnable;


# direct methods
.method constructor <init>(Lcom/htc/feedback/PrivacyPageActivity$Client$ParsingVersionRunnable;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/htc/feedback/PrivacyPageActivity$Client$ParsingVersionRunnable$1;->this$2:Lcom/htc/feedback/PrivacyPageActivity$Client$ParsingVersionRunnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .parameter "chain"
    .parameter "authType"

    .prologue
    .line 133
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .parameter "chain"
    .parameter "authType"

    .prologue
    .line 135
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method
