.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WTrace_event;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WTrace_event"
.end annotation


# instance fields
.field public EventClass:I

.field public EventName:Ljava/lang/String;

.field public Id:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
