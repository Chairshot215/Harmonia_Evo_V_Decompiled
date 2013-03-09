.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WPudData;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WPudData"
.end annotation


# instance fields
.field public Data:[Ljava/lang/Byte;

.field public Id:Ljava/util/UUID;

.field public MessageId:Ljava/util/UUID;

.field public Timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
