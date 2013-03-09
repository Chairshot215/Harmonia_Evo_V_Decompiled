.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WSyncItem;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WSyncItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/restapi/proxy/WebClasses$WSyncItem$WSyncItemType;
    }
.end annotation


# instance fields
.field public Id:Ljava/util/UUID;

.field public SyncItemType:I

.field public Timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 784
    return-void
.end method
