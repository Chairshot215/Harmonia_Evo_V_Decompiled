.class public Lcom/redbend/vdm/MultiGenericAlerts;
.super Ljava/lang/Object;
.source "MultiGenericAlerts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbend/vdm/MultiGenericAlerts$GenericAlert;
    }
.end annotation


# instance fields
.field public correlator:Ljava/lang/String;

.field public genericAlerts:[[Lcom/redbend/vdm/MultiGenericAlerts$GenericAlert;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method
