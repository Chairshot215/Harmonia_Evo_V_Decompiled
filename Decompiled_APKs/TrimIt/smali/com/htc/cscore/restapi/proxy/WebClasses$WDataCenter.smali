.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WDataCenter"
.end annotation


# instance fields
.field public CmsUri:Ljava/lang/String;

.field public Id:Ljava/util/UUID;

.field public ImcUri:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public ServiceUri:Ljava/lang/String;

.field public UpUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
