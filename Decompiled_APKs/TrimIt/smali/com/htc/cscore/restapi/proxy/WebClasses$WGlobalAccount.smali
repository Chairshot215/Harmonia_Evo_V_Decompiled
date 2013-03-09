.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WGlobalAccount;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WGlobalAccount"
.end annotation


# instance fields
.field public DataCenter:Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;

.field public DataCenterId:Ljava/util/UUID;

.field public Email:Ljava/lang/String;

.field public Id:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
