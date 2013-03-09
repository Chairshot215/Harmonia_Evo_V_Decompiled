.class public Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;
.super Ljava/lang/Object;
.source "LogLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/xps/pomelo/log/LogLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateResponse"
.end annotation


# instance fields
.field public logServer:Ljava/lang/String;

.field public policyServer:Ljava/lang/String;

.field public rawData:Ljava/lang/String;

.field public refreshInterval:J

.field public statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
