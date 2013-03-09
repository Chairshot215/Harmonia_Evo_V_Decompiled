.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WRegion"
.end annotation


# instance fields
.field public CountryCode:Ljava/lang/String;

.field public DataCenter:Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;

.field public DataCenterId:Ljava/util/UUID;

.field public DialingCode:Ljava/lang/String;

.field public Id:Ljava/util/UUID;

.field public Name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
